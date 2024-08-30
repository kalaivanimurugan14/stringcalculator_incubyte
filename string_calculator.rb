class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?   # scenario Input: “”, Output: 0
    return numbers.to_i if numbers == numbers.to_i.to_s # scenario Input: “1”, Output: 1

    numbers.split(',').map(&:to_i).sum  # scenario Input: “1,5”, Output: 6
  end

end

