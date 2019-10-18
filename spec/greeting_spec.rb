require './greeting'

RSpec.describe Greeting do
  it "says hello" do
    greeter = Greeting.new

    result = greeter.greet

    expect(result).to eq("Hello, my friend.")
  end

  it "greets with a name" do
    greeter =  Greeting.new

    result = greeter.greet("Bob")

    expect(result).to eq("Hello, Bob.")
  end
end