class StringCalculator
  def add(input_string = "")
    numbers = extract_numbers(input_string)

    negative_numbers = numbers.select(&:negative?)
    return "negatives not allowed: #{negative_numbers.join("")}" if numbers.any?(&:negative?)

    numbers.reject! { |number| number >= 1000 }

    numbers.sum
  end

  private

  def extract_numbers(input_string)
    if input_string.start_with?("//")
      modified_input_string = input_string.gsub("//", "")
      separator = modified_input_string[0].to_s
      delimiters = ["\n", separator]
      numbers_list = modified_input_string.split(Regexp.union(delimiters))
    else
      delimiters = ["\n", ","]
      numbers_list = input_string.split(Regexp.union(delimiters))
    end
    numbers_list.map(&:to_i)
  end
end
