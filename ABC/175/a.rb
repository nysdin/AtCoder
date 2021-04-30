s = gets.chomp
now = 0
ans = 0
s.chars.each do |a|
  if a == 'R'
    now += 1
  elsif 
    now = 0
  end
  if ans < now
    ans = now
  end
end
puts ans
