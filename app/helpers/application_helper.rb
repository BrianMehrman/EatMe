module ApplicationHelper
  
  def todays_meals(user)
    today = Date.today.to_time
    
    Meal.where(["created_at BETWEEN ? and ? and user_id = ?",today, today.tomorrow, user.id])
  end

end

