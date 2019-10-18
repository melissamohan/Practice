class Greeting
  def greet(name = nil)
    if name.nil?
      "Hello, my friend."
    else
      "Hello, Bob."
    end
  end
end