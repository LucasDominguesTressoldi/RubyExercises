class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    @prph = (@speed * 221).to_f
    if @speed <= 4
      return @prph
    elsif @speed >= 5 && @speed <= 8
      return @prph * 0.9
    elsif @speed == 9
      return @prph * 0.8
    else
      return @prph * 0.77
    end
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).to_i
  end
end
