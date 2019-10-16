class Car
  def initialize(speed)
    @speed = speed
  end

  def accelerate
    @speed += 5
    puts "Current speed is #{@speed}"
  end

  def brake
    @speed -= 10
    if @speed < 0
      puts "The car is stopped"
      @speed = 0
    else
      puts "Current speed is #{@speed}"
    end
  end
end

inital_speed = 0
car = Car.new(inital_speed)
puts "Welcome to the Car simulator!"
action = nil

while action != "exit" do
  puts "What would you like to do next?"
  action = gets.chomp
  case action
  when "accelerate"
    car.accelerate
  when "brake"
    car.brake
  else puts "Invalid entry, please try action"
  end
end