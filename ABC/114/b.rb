s = gets.to_s
ans = 100000
0.upto(s.length-4) do |i|
  nums = s[i, 3]
  n = nums.to_i
  ans = (n-753).abs if ans > (n-753).abs
end
puts ans
