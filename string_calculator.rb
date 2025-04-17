class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?
    parts = numbers.split(',')
    return parts.map(&:to_i).sum
  end
end