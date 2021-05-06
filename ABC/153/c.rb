n, k = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
ans = 0
h.sort!.reverse!
h.each do |hp|
  if k > 0
    k -= 1
  else
    ans += hp
  end
end
puts ans
