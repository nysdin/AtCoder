n = gets.to_i
h = {}
h.default = 0
n.times do |i|
  s = gets.chomp
  h[s] += 1
end
count = 0
ans = []
h.each do |k, v|
  if v > count
    count = v
    ans = []
    ans.push(k)
  elsif v == count
    ans.push(k)
  end
end
ans.sort!
puts ans
