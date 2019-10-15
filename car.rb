class Car
  def initialize(speed)
    @speed = speed
  end

  def accelerate
    @speed = @speed + 5
    puts "Current speed is #{@speed}"
  end

  def brake
   @speed = @speed - 10
   puts "Current speed is #{@speed}"
  end
end

current = 0
current_speed = Car.new(current)
puts "Welcome to the Car simulator!"
puts "What would you like to do next?"
action = gets.chomp

while action != "exit" do
  if action == "accelerate"
    current_speed.accelerate
    puts "What would you like to do next?"
    action = gets.chomp
  elsif action == "brake"
    current_speed.brake
    puts "What would you like to do next?"
    action = gets.chomp
  else puts "Invalid entry, please try action"
     puts "What would you like to do next?"
     action = gets.chomp
  end
end