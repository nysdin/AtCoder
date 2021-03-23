s = gets.chomp
ans = 1
j = 0

s.chars.each_with_index do |c, i|
  if i % 2 == 0
    if c.ord >= 97 && c.ord <= 122
      next
    else
      ans = 0
      break
    end
  else
    if c.ord < 96
      next
    else
      ans = 0
      break
    end
  end
end

if ans == 1
  puts "Yes"
else
  puts "No"
end
