class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?   # scenario Input: “”, Output: 0
    return numbers.to_i if numbers == numbers.to_i.to_s # scenario Input: “1”, Output: 1


    # Handle custom delimiters
    if numbers.start_with?("//")
      delimiter, numbers = numbers[2..].split("\n", 2)
      numbers_list = numbers.split(delimiter).map(&:to_i)
    else
      # Split by both commas and new lines
      numbers_list = numbers.split(/,|\n/).map(&:to_i)
    end

    numbers_list.sum

  end

end

