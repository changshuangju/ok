class ShowController < ApplicationController
  def show_talks
    @show_sheet = Sheet.find(params[:id])
    @talk = Talk.find(params[:id])
  end
  def show_experiments
    @show_sheet = Sheet.find(params[:id])
    @experiment = Experiment.find(params[:id])
  end
end
