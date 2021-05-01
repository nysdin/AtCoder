n = gets.to_i
a = gets.split.map(&:to_i)
limit = 10**18
a.sort!
ans = 1
 
a.each do |n|
  if n == 0
    ans = 0
    break
  end
  ans *= n
  if ans > limit
    ans = -1
    break
  end
end
puts ans
