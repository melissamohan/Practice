require './greeting'

RSpec.describe Greeting do
  it "says hello" do
    greeter = Greeting.new

    result = greeter.greet

    expect(result).to eq("Hello, my friend")
  end
end