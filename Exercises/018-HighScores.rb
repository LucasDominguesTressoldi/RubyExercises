class HighScores
  def initialize(arr)
    @scores = arr
  end

  def scores
    @scores
  end

  def personal_best
    @scores.max
  end

  def latest
    @scores[-1]
  end

  def personal_top_three
    @scores.sort.reverse.slice(0, 3)
  end

  def latest_is_personal_best?
    latest() >= personal_best ? true : false
  end
end
