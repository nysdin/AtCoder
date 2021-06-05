N = gets.to_i
aa = gets.split.map(&:to_i)
N.times do |i|
  aa[i] -= (i+1)
end
aa.sort!
b = aa[N/2]
ans = 0
aa.each do |a|
  ans += (b-a).abs
end
puts ans
