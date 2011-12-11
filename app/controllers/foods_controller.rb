class FoodsController < ApplicationController
  before_filter :get_food, :only => [:show,:edit,:update,:destroy]
  before_filter :food_privaleges, :only => [:edit,:update,:destroy]  

  def get_food
    if params[:id]
      @food = FoodDes.find(params[:id])
    else
      redirect_to do |format|
        format.html { render 'missing_food.html.haml' }
        format.js { render 'missing_food.js.erb' }
        format.json { head :bad_request }
      end
    end
  end

  def food_privaleges
    if logged_in?
      if @food
        if @food.user and @food.user == @user
          
        end
      end      
    end

  end
  
  def index
    
  end

  def show
    @food = FoodDes.find(params[:id])
    @nutrients = @food.nutrition_facts
  end
  
  def search
    asearch = params[:search]
    @results = FoodDes.where("\"Long_Desc\" LIKE '%#{asearch}%'")
		
		respond_to do |format|
			format.js
			format.html
		end
  end

  def new 
    @food = FoodDes.new

    respond_to do |format|
      format.js
      format.html
      format.json { render json: @food }
    end
  end

  def create
    @food = FoodDes.new(params[:food])
    
    # TODO store relation to user who created food.
    respond_to do |format|
      if @food.save
        format.html { render :template=>"foods/show", notice: 'Food was successfully created.' }
        format.js
        format.json { render json: @food, status: :created, location: @food }
      else
        format.html { render action: "new" }
        format.js
        format.json { render json: @food.errors, status: :unprocessable_entity }
      end
    end 
  end

  def edit
    @food = FoodDes.find(params[:id])
  end

  def update
    @food = FoodDes.find(params[:id])

    respond_to do |format|
      if @food.update_attributes(params[:food])
        format.html { redirect_to @food, notice: "Food was successfully updated."}
        format.js
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.js 
        format.json { render json: @food.errors, status: :unprocessable_entity }
      end
    end 
  end


  def destroy
    @food.destroy

    respond_to do |format|
      format.html { redirect_to root_url }
      format.json { head :ok }
    end
  end
end
