class Calculator
  def add(*num)
    if num.empty?
      0
    elsif num.length == 1
      num[0]
    elsif num.length == 2
      num[0] + num[1]
    end
  end
end
