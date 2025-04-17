class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    parts = numbers.split(/,|\n/)
    parts.map(&:to_i).sum
  end
end