#!/usr/bin/env ruby

level = 0
key = {"(" => 1, ")" => -1}
basement = nil

gets.chomp.each_char.with_index(1) do |dir, index|
  puts "#{dir} #{index}"
  level += key[dir]
  basement = index if level == -1 && !basement
end

puts "Final Level: #{level}"
puts "Reached basement: #{basement}" if basement
