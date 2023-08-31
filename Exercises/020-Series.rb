class Series
  def initialize(series)
    @serie = series
  end

  def slices(final_index)
    raise ArgumentError if final_index > @serie.length or final_index <= 0
    arr = []
    initial_index = 0
    keep_going = true
    while keep_going
      arr.push(@serie.slice(initial_index...final_index))
      initial_index += 1
      final_index += 1
      final_index > @serie.length ? keep_going = false : keep_going
    end
    arr
  end
end