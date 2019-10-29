class Greeting
  def greet(name = nil)
    if name.nil?
      "Hello, my friend."
    elsif name == name.upcase
      "HELLO #{name}!"
    else
      "Hello, #{name}."
    end
  end

  def greet2(name1, name2)
    "Hello, #{name1} and #{name2}."
  end

  def greet_multiple(*name)
    last = name.pop()
    "Hello, #{name.join(', ')}, and #{last}."
  end

  def greet_multiple_shout(*name)
    last = name.pop()
    y = name.select { |x| x != x.upcase }
    s = name.select { |r| r == r.upcase }
    "Hello, #{y.join(', ')} and #{last}. AND HELLO #{s.join('')}!"
  end

  def greet_split_commas(*name)
    y = name.join(',')
    p = y.split(",")
    last = p.pop()
    "Hello, #{p.join(', ')}, and#{last}."
  end

  def greet_escape_intentional_commas(*name)
    p = name.join(',')
    y = p.gsub("\"", "")
    x = y.split(",")
    last = x.pop()
    "Hello, #{x.join(' and ')},#{last}."
  end

end