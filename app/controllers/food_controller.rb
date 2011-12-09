class FoodController < ApplicationController
  def index
  end

  def show
    @food = FoodDes.find(params[:id])
    @nutrients = @food.nutrition_facts
  end
  
  
  
  def search
    asearch = params[:search]
    @results = FoodDes.where("Long_Desc LIKE '%#{asearch}%'")
		
		respond_to do |format|
			format.js
			format.html
		end
  end

  def new 

  end

  def create

  end

  def edit

  end

  def update

  end


  def destroy

  end
end
