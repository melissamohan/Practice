puts "Please enter a number:"
n = gets.chomp.to_i

puts "Here is the output"
for i in 1..n
  puts i * i
end