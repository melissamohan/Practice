class Calculator
  def add(*num)
    sum = 0
    if num.empty?
      0
    elsif num.length == 1
      num[0]
    elsif num.length == 2
      num[0] + num[1]
    elsif num.length > 2
      num.each{ |x| sum+= x}
      sum
    end
  end
end
