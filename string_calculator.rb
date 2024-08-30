class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?   # scenario Input: “”, Output: 0
    return numbers.to_i if numbers == numbers.to_i.to_s # scenario Input: “1”, Output: 1
    
    # Split by both commas and new lines
		numbers.split(/,|\n/).map(&:to_i).sum
  end

end

