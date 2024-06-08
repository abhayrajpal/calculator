class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    if numbers.start_with?("//")
      delimiter = numbers[2]
      numbers = numbers[4..]
    else
      delimiter = ",|\n"
    end

    number_list = numbers.split(/#{delimiter}/).map(&:to_i)
    negatives = number_list.select { |n| n < 0 }

    unless negatives.empty?
      raise "negative numbers not allowed: #{negatives.join(', ')}"
    end

    number_list.sum
  end
end