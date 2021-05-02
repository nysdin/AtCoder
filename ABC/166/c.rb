require 'set'
n, m = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
ans = 0
roots = Array.new(n){Set.new}
m.times do |i|
  a, b = gets.split.map(&:to_i)
  roots[a-1].add(b-1)
  roots[b-1].add(a-1)
end
c = 0
while c < n
  height= h[c]
  flag = true
  roots[c].each do |s|
    if h[s] >= height
      flag = false
      break
    end
  end
  if flag
    ans += 1
  end
  c += 1
end
puts ans
