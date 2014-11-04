class SheetsController < ApplicationController
  # GET /sheets
  # GET /sheets.json
  before_filter :judge
  def index
    @sheets = Sheet.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sheets }
    end
  end

  # GET /sheets/1
  # GET /sheets/1.json
  def show
    @sheet = Sheet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sheet }
    end
  end

  # GET /sheets/new
  # GET /sheets/new.json
  def new
    @sheet = Sheet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sheet }
    end
  end

  # GET /sheets/1/edit
  def edit
    @sheet = Sheet.find(params[:id])
  end

  # POST /sheets
  # POST /sheets.json
  def create
    @sheet = Sheet.new(params[:sheet])
    temp1 = Talk.last
    temp2 = Experiment.last
    temp3 = Sheet.last
    if temp3.id == (temp2.sheet_id+1)
      @sheet.labs = temp2.lab1+temp2.lab2+temp2.lab3+temp2.lab4+temp2.lab5+temp2.lab6+temp2.lab7
    else 
      redirect_to :controller => 'sheets', :action => 'new'
    end
    if temp3.id == (temp1.sheet_id+1)
      @sheet.discussions = temp1.discussion1+temp1.discussion2
                            +temp1.discussion3+temp1.discussion4+temp1.discussion5
                            +temp1.discussion6+temp1.discussion6+temp1.discussion7
                            +temp1.discussion8+temp1.discussion8+temp1.discusssion9
                            +temp1.discussion9+temp1.discussion10+temp1.discussion11
    else 
      redirect_to :controller => 'sheets', :action => 'new'
    end
    @sheet.final = @sheet.project+@sheet.labs+@sheet.discussions+@sheet.test
    respond_to do |format|
      if @sheet.save
        format.html { redirect_to @sheet, notice: 'Sheet was successfully created.' }
        format.json { render json: @sheet, status: :created, location: @sheet }
      else
        format.html { render action: "new" }
        format.json { render json: @sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sheets/1
  # PUT /sheets/1.json
  def update
    @sheet = Sheet.find(params[:id])

    respond_to do |format|
      if @sheet.update_attributes(params[:sheet])
        format.html { redirect_to @sheet, notice: 'Sheet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @sheet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sheets/1
  # DELETE /sheets/1.json
  def destroy
    @sheet = Sheet.find(params[:id])
    @sheet.destroy

    respond_to do |format|
      format.html { redirect_to sheets_url }
      format.json { head :no_content }
    end
  end
end
