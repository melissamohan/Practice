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
    elsif numbers.length == 1 and !convert.include?("\n") and !convert.start_with?("//")
      numbers[0]
    elsif numbers.length == 2 and !convert.include?("\n") and !convert.start_with?("//")
      numbers[0] + numbers[1]
    elsif numbers.length > 2 and !convert.include?("\n") and !convert.start_with?("//")
      sum = 0
      numbers.each { |x| sum += x }
      sum
    elsif convert.include?("\n") and !convert.start_with?("//")
      p = 0
      r = convert.gsub("\n", ",")
      s = r.split(",")
      s.map!(&:to_i)
      s.each { |x| p += x }
      p
    elsif convert.start_with?("//")
      delim = begins(num)
      delim
    end
  end

  def begins(*num)
    p = 0
    a = num.join("")
    a.gsub!("//","")
    separator = a[0].to_s
    o = a.gsub("\n", "")
    q = o.split(separator)
    q.map!(&:to_i)
    q.each { |x| p += x }
    p
  end
end


