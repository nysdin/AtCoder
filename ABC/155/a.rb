require 'set'
a, b, c = gets.split.map(&:to_i)
s = Set.new
s.add(a)
s.add(b)
s.add(c)
if s.length == 2
  puts 'Yes'
else
  puts 'No'
end
