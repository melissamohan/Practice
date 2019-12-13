class StringCalculator
  def add(string_of_numbers = "")
    numbers = extract_number(string_of_numbers)

    negative_numbers = numbers.select(&:negative?)
    return "negatives not allowed: #{negative_numbers.join("")}" if numbers.any?(&:negative?)

    numbers.reject! { |number| number >= 1000 }

    numbers.sum()
  end

  private

  def extract_number(string_of_numbers)
    if string_of_numbers.start_with?("//")
      string_of_numbers_mod = string_of_numbers.gsub("//", "")
      separator = string_of_numbers_mod[0].to_s
      delimiters = ["\n", separator]
      new_string = string_of_numbers_mod.split(Regexp.union(delimiters))
    else
      delimiters = ["\n", ","]
      new_string = string_of_numbers.split(Regexp.union(delimiters))
    end
    extracted_numbers = new_string.map(&:to_i)
    extracted_numbers
  end
end
