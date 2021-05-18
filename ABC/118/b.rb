n, m  = gets.split.map(&:to_i)
food = Array.new(m, 0)
n.times do |i|
  k, *l = gets.split.map(&:to_i)
  k.times do |j|
    food[l[j]-1] += 1
  end
end
ans = 0
m.times do |i|
  ans += 1if food[i] == n
end
puts ans
