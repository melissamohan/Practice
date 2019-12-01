class StringCalculator
  def add(string_of_numbers = "")
    separate_string = string_of_numbers.split(",")
    numbers = separate_string.collect do |n|
      n.to_i
    end
    neg = numbers.select(&:negative?)
    neg_check = numbers.any? { |x| x.negative? }
    puts string_of_numbers
    puts numbers
    if string_of_numbers.start_with?("//")
      delimiter = string_of_numbers.gsub!("//", "")
      separator = a[0].to_s
    else
      separator = ","
    end

    if string_of_numbers.length == 0
      0
    elsif neg_check
      "negatives not allowed: #{neg.join("")}"
    elsif string_of_numbers.length == 1
      string_of_numbers[0].to_i
    end
  end
end
