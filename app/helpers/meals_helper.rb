module MealsHelper
  def count_calories(meal)
    total = 0
    meal.consumptions.each do |consumption| 
      consumption.food.nutrition_facts.each do |fact|
        # count the amount of Calories
        if fact.definition.Tagname == 'ENERC_KCAL' 
          total += fact.value(consumption)#* consumption.measurement
	      end
      end
    end
    total
  end

  def meal_session
    meal = nil

    if session["current-meal"]
      meal = Meal.find(session["current-meal"])
    end

    meal
  end

  def todays_meals(user)
    today = Date.today.to_time
    
    Meal.where(["created_at BETWEEN ? and ? and user_id = ?",today, today.tomorrow, user.id])
  end
end
