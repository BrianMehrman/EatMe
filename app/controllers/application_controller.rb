class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :signed_in?, :sign_user_in, :sign_user_out, :logged_in?,:current_user
  
  before_filter :detect_browser
    
  def detect_browser
    #require "browser"

    user_agent =  request.env['HTTP_USER_AGENT']
    if user_agent
      @browser = Browser.new(:ua => user_agent, :accept_language => "en-us")
    else
      @browser = nil
    end
  end
  
  # user filters
  def sign_user_in(user)
    session[:user_id] = user.id
  end

  def sign_user_out
    session[:user_id] = nil
  end

  def signed_in?
    session[:user_id].present?
  end  

  def logged_in?
    session[:user_id].present?
  end

  def current_user
    if logged_in?
      User.find(session[:user_id])
    else
      nil
    end
  end

  def require_user
    if session[:user_id]
      @user = User.find(session[:user_id])
    else
      redirect_to landing_path, :notice => "You must be logged in to see this page."
    end
  end

  # tracking filters
  def user_trackings
    if @user
      @trackings = @user.trackings
    else
      @trackings = []    
    end
  end

  # food filters
  def user_generated_food
  end
  
  def user_generated_nutrition

  end

  # meal filters
  def user_meals
    
  end

  # track filters
  def available_tracks

  end
  

end
