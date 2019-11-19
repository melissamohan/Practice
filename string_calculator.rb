class Calculator
  def add(*num)
    convert = num.join("")
    no_comma = convert.gsub(",","")
    numbers = no_comma.each_char.map{ |x| x.to_i }
    puts numbers
    if numbers.empty?
      0
    elsif numbers.length == 1
      return numbers[0]
    elsif numbers.length == 2
      return numbers[0] + numbers[1]
    end
  end
end