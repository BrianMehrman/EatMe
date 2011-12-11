class FactorsController < ApplicationController
  # GET /factors
  # GET /factors.json
  def index
    @factors = Factor.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @factors }
    end
  end

  # GET /factors/1
  # GET /factors/1.json
  def show
    @factor = Factor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @factor }
    end
  end

  # GET /factors/new
  # GET /factors/new.json
  def new
    @factor = Factor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @factor }
    end
  end

  # GET /factors/1/edit
  def edit
    @factor = Factor.find(params[:id])
  end

  # POST /factors
  # POST /factors.json
  def create
    @factor = Factor.new(params[:factor])

    respond_to do |format|
      if @factor.save
        format.html { redirect_to @factor, notice: 'Factor was successfully created.' }
        format.json { render json: @factor, status: :created, location: @factor }
      else
        format.html { render action: "new" }
        format.json { render json: @factor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /factors/1
  # PUT /factors/1.json
  def update
    @factor = Factor.find(params[:id])

    respond_to do |format|
      if @factor.update_attributes(params[:factor])
        format.html { redirect_to @factor, notice: 'Factor was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @factor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /factors/1
  # DELETE /factors/1.json
  def destroy
    @factor = Factor.find(params[:id])
    @factor.destroy

    respond_to do |format|
      format.html { redirect_to factors_url }
      format.json { head :ok }
    end
  end
end
