n = gets.to_i
mochi = []
n.times do |i|
  a = gets.to_i
  mochi.push(a)
end
mochi.sort!.reverse!.uniq!
puts mochi.length
