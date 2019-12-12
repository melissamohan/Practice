class StringCalculator
  def add(string_of_numbers = "")
    if string_of_numbers.start_with?("//")
      string_of_numbers_mod = string_of_numbers.gsub("//", "")
      separator = string_of_numbers_mod[0].to_s
      delimiters = ["\n", separator]
      new_string = string_of_numbers_mod.split(Regexp.union(delimiters))
    else
      delimiters = ["\n", ","]
      new_string = string_of_numbers.split(Regexp.union(delimiters))
    end

    numbers = new_string.collect do |n|
      n.to_i
    end
    neg = numbers.select(&:negative?)
    return "negatives not allowed: #{neg.join("")}" if numbers.any?(&:negative?)
    numbers.reject! { |number| number >= 1000 }

    if string_of_numbers.length == 0
      0
    elsif string_of_numbers.length > 0
       calculate_sum(numbers)
    end
  end

  def calculate_sum(numbers)
    total = 0
    numbers.each { |number| total += number.to_i }
    return total
  end
end