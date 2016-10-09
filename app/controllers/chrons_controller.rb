class ChronsController < ApplicationController

  def index
    @all_chrons = Chron.order('created_at desc limit 1')
    @chron = Chron.new
  end

  def new
    @chron = Chron.new
  end

  def create
    # binding.pry
    @chron = Chron.new(chron_params.merge(form_params: params[:chron][:chronic_time]))
    if @chron.save
      redirect_to chrons_path
    else 
      redirect_to error_path
    end
  end

  def error
  end

  private

  def chron_params
    params.require(:chron).permit(:chronic_time, :form_params)
  end
end
