class ChronsController < ApplicationController

  def index
    @all_chrons = Chron.all
    @chron = Chron.new
  end

  def new
    @chron = Chron.new
  end

  def create
    binding.pry
    @chron = Chron.new(chron_params.merge(form_params: params[:chron][:chronic_time]))
    if @chron.save
      redirect_to chrons_path
    else
      render 'new'
    end
  end

  private

  def chron_params
    params.require(:chron).permit(:chronic_time, :form_params)
  end
end
