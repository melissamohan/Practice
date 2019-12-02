class StringCalculator
  def add(string_of_numbers = "")
    sum = 0
    separate_string = string_of_numbers.split(",")
    numbers = separate_string.collect do |n|
      n.to_i
    end
    neg = numbers.select(&:negative?)
    is_negative = numbers.any? { |x| x.negative? }
    is_greater_than_1000 = numbers.any? { |x| x >= 1000 }
    less_than_1000 = numbers.select { |x| x < 1000 }
    if string_of_numbers.start_with?("//")
      string_of_numbers_mod = string_of_numbers.gsub("//", "")
      separator = string_of_numbers_mod[0].to_s
      delimiters = ["\n", separator]
      separator_split = string_of_numbers_mod.split(Regexp.union(delimiters))
    else
      delimiters = ["\n", ","]
      comma_split = string_of_numbers.split(Regexp.union(delimiters))
    end

    if is_negative
      "negatives not allowed: #{neg.join("")}"
    elsif is_greater_than_1000
      less_than_1000.each { |x| sum += x }
      sum
    elsif string_of_numbers.length == 0
      0
    elsif string_of_numbers.length == 1
      string_of_numbers[0].to_i
    elsif string_of_numbers.length > 1
      if string_of_numbers.start_with?("//")
        separator_split.map!(&:to_i)
        separator_split.each { |x| sum += x.to_i }
        sum
      else
        comma_split.each { |x| sum += x.to_i }
        sum
      end
    end
  end
end