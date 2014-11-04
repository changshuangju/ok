class EditController < ApplicationController
  before_filter :keep_balance, :except => [:new_experiment,:new_talks]
  def new_experiments
    @experiment =Experiment.new
    respond_to do |format|
      format.html
      format.json {render json: @experiment}
    end
  end
  def new_talks
    @talk = Talk.new
    respond_to do |format|
      format.html
      format.json {render json: @talk}
    end
  end
  def create_experiments
    @experiment = Experiment.new(params[:experiment])
    respond_to do |format|
    if @experiment.save
      format.html {redirect_to :controller =>'sheets', :action => 'new'}
    else
      format.html {render action: "new_experiments"}
    end
  end
end
   def create_talks
     @talk = Talk.new(params[:experiment])
     respond_to do |format|
     if @talk.save
       format.html{redirect_to :controller => 'sheets', :action =>'new'}
     else 
       format.html {render action: "new_talks"}
     end
    end 
  end
end
