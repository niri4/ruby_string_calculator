class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    delimiter = /,|\n/
    
    if numbers.start_with?("//")
      header, numbers = numbers.split("\n", 2)
      custom_delimiter = header[2..]
      delimiter = Regexp.escape(custom_delimiter)
    end

    parts = numbers.split(/#{delimiter}|,|\n/)
    int_parts = parts.map(&:to_i)

    negatives = int_parts.select { |n| n < 0 }
    unless negatives.empty?
      raise "negative numbers not allowed: #{negatives.join(', ')}"
    end

    int_parts.sum
  end
end
