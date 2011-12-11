class TrackingsController < ApplicationController
  before_filter :require_user

  def index
    @trackings = @user.trackings
    
    respond_to do |format|
      format.html
      format.js
      format.json { render json: @trackings } 
    end      
  end

  def show
    @tracking = @user.trackings.find(params[:id])
    
    respond_to do |format|
      format.html
      format.js
      format.json { render json: @tracking }
    end
  end

  def new
    @tracking = Tracking.new

    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @tracking = Tracking.new params[:tracking]

    respond_to do |format|
      if @tracking.save
        UserMailer.new_tracking_email(@tracking).deliver  
        format.html { redirect_to @tracking, notice: "Tracking was successfully created." }
        format.js
        format.json { render json: @tracking, status: :created, location: @tracking }
      else
        format.html { render action: "new" }
        format.js   { render "failure.js.erb" }
        format.json { render json: @tracking.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @tracking = @user.trackings.find(params[:id])

    respond_to do |format|
      if @tracking
        format.html
        format.js
        format.json { render json: @tracking }
      else
        format.html { redirect_to trackings_path, notice: "This is not your tracking." }
        format.js
        format.json
      end
    end
  end

  def update
    @tracking = @user.tracking.find(params[:id])
    
    respond_to do |format|
      if @tracking.update_attributes(params[:tracking])
        format.html { redirect_to :back, notice: " #{@tracking.track.name} was successfully updated."}
        format.js
        format.json { render json: @tracking, status: :updated, location: @tracking }
      else
        format.html { render action: "new" }
        format.json { render json: @tracking.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @tracking = @user.tracking.find(params[:id])
    
    respond_to do |format|
      if @tracking 
        format.html { redirect_to :back, notice: "The deed has been done!" }
        format.js
        format.json { head :ok }
      else
        format.html { redirect_to :back, notice: "You DO not have permission to touch that!!!" }
        format.js
        format.json { head :bad_request }
      end
    end
  end

end
