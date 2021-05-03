require 'set'
n = gets.to_i
gacha = Set.new
i = 0
while i < n
  s = gets.chomp
  gacha.add(s)
  i += 1
end
puts gacha.length
