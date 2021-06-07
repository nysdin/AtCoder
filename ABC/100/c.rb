N = gets.to_i
aa = gets.split.map(&:to_i)
ans = 0
aa.each do |a|
  while a % 2 == 0
    ans += 1
    a /= 2
  end
end
puts ans
