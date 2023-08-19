class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  class UnsupportedOperation < StandardError
  end

  def self.calculate(first_operand, second_operand, operation)
    raise UnsupportedOperation.new(operation) if not ALLOWED_OPERATIONS.include?(operation)
    raise ArgumentError if first_operand.is_a?(String) or second_operand.is_a?(String)
    return 'Division by zero is not allowed.' if second_operand == 0

    case operation
      when '+'
        return "#{first_operand} + #{second_operand} = #{first_operand + second_operand}"
      when '*'
        return "#{first_operand} * #{second_operand} = #{first_operand * second_operand}"
      when '/'
        return "#{first_operand} / #{second_operand} = #{first_operand / second_operand}"
      end
  end
end
