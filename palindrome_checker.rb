#!/usr/bin/env ruby
ARGV.each do |a|
  if a == a.reverse
    puts "#{a} is a palindrome"
  else
    puts "#{a} is not a palindrome"
  end
end

