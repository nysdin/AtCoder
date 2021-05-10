n = gets.to_i
str = []
ans = 0
n.times do |_|
  sum = 0
  t = gets.chomp
  str.push(t.chars.sort.join)
end
str.sort!
now = 1
(n-1).times do |i|
  if str[i] == str[i+1]
    now += 1
  else
    ans += now*(now-1)/2
    now = 1
  end
end
ans += now*(now-1)/2
puts ans
