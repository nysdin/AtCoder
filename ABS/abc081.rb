nums = gets.chomp.chars
res = 0
nums.each do |s|
  if s == '1'
    res += 1
  end
end
puts res
