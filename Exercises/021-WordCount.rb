class Phrase
  def initialize(word)
    @counts = {}
    @word = word.downcase.split(/[^'\w]+|'(?!\w)|(?<!\w)'/)
  end

  def word_count()
    @word.map { |key| @counts.include?(key) ? @counts[key] += 1 : (key != "" ? @counts[key] = 1 : nil)}
    @counts
  end
end
