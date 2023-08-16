class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line.split(": ")[1].strip
  end

  def log_level
    @line.split(":")[0].gsub(/[\[\]]/, '').downcase.strip
  end

  def reformat
    @reformat = @line.gsub(/[\[]/, '(').gsub(/[\]]/, ')').downcase.split(': ')
    "#{@reformat[1].strip.capitalize} #{@reformat[0]}"
  end
end
