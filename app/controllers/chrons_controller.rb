class ChronsController < ApplicationController

  def index
    @all_chrons = Chron.order('created_at desc limit 10')
    @chron = Chron.new
  end

  def new
    @chron = Chron.new
  end

  def create
    # binding.pry
    @chron = Chron.create!(chron_params.merge(form_params: params[:chron][:chronic_time]))
    redirect_to chrons_path
  end

  private

  def chron_params
    params.require(:chron).permit(:chronic_time, :form_params)
  end
end
