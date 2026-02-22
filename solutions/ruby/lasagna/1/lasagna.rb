class Lasagna
   EXPECTED_MINUTES_IN_OVEN = 40

  
  def remaining_minutes_in_oven(actual_minutes_in_oven)
    remaining_time =  EXPECTED_MINUTES_IN_OVEN - actual_minutes_in_oven
    return remaining_time
    raise 'Please implement the Lasagna#remaining_minutes_in_oven method'
  end


  def preparation_time_in_minutes(layers)
   preparation_time = layers * 2
    return preparation_time
    raise 'Please implement the Lasagna#preparation_time_in_minutes method'
  end

  def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
    first_time = actual_minutes_in_oven 
    layer_time = number_of_layers * 2
    total_time =  first_time + layer_time
    return total_time
    raise 'Please implement the Lasagna#total_time_in_minutes method'
  end
end
