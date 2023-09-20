class Hamming
  def self.compute(f_strand, s_strand)
    raise ArgumentError if f_strand.length != s_strand.length
    count = 0
    f_strand.each_char.with_index do |letter, index|
      letter == s_strand[index] ? nil : count += 1
    end
    count
  end
end
