n = gets.to_i
a = gets.split.map(&:to_i)
ans = Array.new(n+1, 0)
a.each do |i|
  ans[i] += 1
end
1.upto(n) do |i|
  puts ans[i]
end
