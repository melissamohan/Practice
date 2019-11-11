class Calculator
  def add(*num)
    sum = 0
    convert = num.join(",")
    if num.empty?
      0
    elsif num.length == 1 and !convert.include?("\n")
      num[0]
    elsif num.length == 2 and !num.include?("\n")
      num[0] + num[1]
    elsif num.length > 2 and !num.include?("\n")
      num.each { |x| sum += x }
      sum
    elsif convert.include?("\n")
      result = new_line(num)
      result
    end
  end

  def new_line(*num)
    convert = num.join(",")
    p = 0
    r = convert.gsub("\n", ",")
    s = r.split(",")
    s.map!(&:to_i)
    s.each { |x| p += x }
    p
  end
end

