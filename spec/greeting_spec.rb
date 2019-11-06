require './greeting'

RSpec.describe Greeting do
  it "says hello" do
    greeter = Greeting.new

    result = greeter.greet

    expect(result).to eq("Hello, my friend.")
  end

  it "greets with a name" do
    greeter = Greeting.new

    result = greeter.greet("Bob")

    expect(result).to eq("Hello, Bob.")
  end

  it "greets with a shout" do
    greeter = Greeting.new

    result = greeter.greet("JERRY")

    expect(result).to eq("HELLO JERRY!")
  end

  it "greets with two names" do
    greeter = Greeting.new

    result = greeter.greet("Jill", "Jane")

    expect(result).to eq("Hello, Jill and Jane.")
  end

  it "greets with multiple names" do
    greeter = Greeting.new

    result = greeter.greet("Amy", "Brian", "Charlotte")

    expect(result).to eq("Hello, Amy, Brian, and Charlotte.")
  end

 it "greets with multiple names including shouting" do
    greeter = Greeting.new

    result = greeter.greet("Amy", "BRIAN", "Charlotte")

    expect(result).to eq("Hello, Amy and Charlotte. AND HELLO BRIAN!")
  end

  it "greets with multiple names, split using commas" do
    greeter = Greeting.new

    result = greeter.greet("Bob", "Charlie, Dianne")

    expect(result).to eq("Hello, Bob, Charlie, and Dianne.")
  end

  it "greets with multiple names, escapes intentional commas" do
    greeter = Greeting.new

    result = greeter.greet("Bob", "\"Charlie, Dianne\"")

    expect(result).to eq("Hello, Bob and Charlie, Dianne.")
  end
end