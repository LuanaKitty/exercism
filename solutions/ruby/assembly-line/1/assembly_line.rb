class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
if @speed > 0 && @speed <= 4
  successrate = 1
elsif @speed > 4 && @speed <= 8
  successrate = 0.9
elsif @speed == 9
  successrate = 0.8
else 
  successrate = 0.77
end
perfproduction = @speed *  221
    rate_per_hour = perfproduction * successrate
return rate_per_hour
    
  end

  def working_items_per_minute
  if @speed > 0 && @speed <= 4
  successrate = 1
elsif @speed > 4 && @speed <= 8
  successrate = 0.9
elsif @speed == 9
  successrate = 0.8
else 
  successrate = 0.77
end
perfproduction = @speed *  221
    rate_per_hour = perfproduction * successrate
return (rate_per_hour / 60).floor
    
  end
end
