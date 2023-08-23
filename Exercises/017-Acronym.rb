class Acronym
  def self.abbreviate(phrase)
    arr = phrase.gsub("-", " ").split(" ").map! { |item| item[0][0]}.join().upcase()
  end
end
