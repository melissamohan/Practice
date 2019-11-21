class Calculator
  def add(*num)
    convert = num.join("")
    separate_string = convert.split(",")
    numbers = separate_string.collect do |n|
      n.to_i
    end
    puts numbers
    puts convert
    if numbers.empty?
      0
    elsif numbers.length == 1 and !convert.include?("\n")
      numbers[0]
    elsif numbers.length == 2 and !convert.include?("\n")
      numbers[0] + numbers[1]
    elsif numbers.length > 2 and !convert.include?("\n")
      sum = 0
      numbers.each { |x| sum += x }
      sum
    elsif convert.include?("\n")
      p = 0
      r = convert.gsub("\n", ",")
      s = r.split(",")
      s.map!(&:to_i)
      s.each { |x| p += x }
      p
    end
  end
end


