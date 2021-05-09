n = gets.to_i
a = gets.split.map(&:to_i)
ans = Array.new(n)
n.times do |i|
  ans[a[i]-1] = (i+1).to_s
end
puts ans.join(" ")
