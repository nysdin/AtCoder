n = gets.to_i
ans = 0
1.upto(n) do |i|
  if i % 3 == 0 || i % 5 == 0 || i % 15 == 0
    next
  end
  ans += i
end
puts ans
