require 'set'
n, m = gets.split.map(&:to_i)
a = Set.new
m.times do |i|
  b = gets.to_i
  a.add(b)
end
prev = 0
now = 1
n.times do |i|
  if a.include?(i+1)
    prev = now
    now = 0
  else
    tmp = now + prev
    prev = now
    now = tmp
  end
end
puts now % 1000000007
