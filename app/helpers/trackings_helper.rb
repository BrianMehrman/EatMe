module TrackingsHelper

  def nutrition_factor

  end

  def food_factor

  end

  def group_factor

  end

  def factor_meals(factors, meals)
    hash_out = {}
    factors.each do |f|
      total = 0
      meals.each do |m|
        m.consumptions.each do |consumption|
          consumption.food.nutrition_facts.each do |fact|
            if fact.definition.Tagname == f.factoree.definition.Tagname
              total += fact.value(consumption)
            end
          end
        end
      end
      hash_out[f.name] = total
    end
    hash_out
  end

  def run_rule(rule, global_hash)
    # break rule up into operators and variables
    keys = global_hash.keys
    
    vars_ops = /(\w)+?|([\*|\+|\-|\/])|(\w$)/
    
  end
  
  def todays_tracking_results(tracking)
    meals = todays_meals(@user)
    track = tracking.track
    output = 0 
    # gather factors from each meal
    g_hash = factor_meals(track.factors, meals)
    
    # run rule using factor results
    #track.rules.each do |rule|
      # run rules
      #g_hash = run_rule(rule, g_hash)
    #end
    
    # return out put from last rule
    output = g_hash['out']
    output ? output.class == Float ? output.round(2) : output.to_i : 0
  end
end
