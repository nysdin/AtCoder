require 'set'
n = gets.to_i
a = gets.split.map(&:to_i)
s = Set.new(a)
if s.length == n
  puts 'YES'
else
  puts 'NO'
end
