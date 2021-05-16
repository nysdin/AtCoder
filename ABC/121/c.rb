n, m = gets.split.map(&:to_i)
list = []
n.times do |i|
  a, b = gets.split.map(&:to_i)
  list.push([a,b])
end
list.sort_by!{|a,b| a}
ans = 0
n.times do |i|
  a, b = list[i]
  if b < m
    m -= b
    ans += a * b
  else
    ans += a * m
    break
  end
end
puts ans
