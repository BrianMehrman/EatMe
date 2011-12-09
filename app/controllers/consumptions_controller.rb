class ConsumptionsController < ApplicationController
  def new
    @consumption = Consumption.new :food_id => params[:food_id]
    
    respond_to do |format|
      format.html # new.html.erb
      format.json {render json: @consumption}
      format.js   # new.js.erb
    end
  end

  def create
  end

  def show
  end

  def update
  end

  def destroy
  end

end
