module Port
  # TODO: define the 'Identifier' constant
  Identifier = :PALE

  def self.get_identifier(city)
    city.slice(0, 4).to_sym.upcase
  end

  def self.get_terminal(ship_identifier)
    if ship_identifier.to_s.include?('OIL') or ship_identifier.to_s.include?('GAS')
      return :A
    else
      return :B
    end
  end
end
