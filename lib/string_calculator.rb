class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    if numbers.start_with?("//")
      delimiter = numbers[2]
      numbers = numbers[4..]
    else
      delimiter = ",|\n"
    end

    numbers.split(/#{delimiter}/).map(&:to_i).sum
  end
end