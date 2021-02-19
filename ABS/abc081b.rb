n = gets.to_i
nums = gets.split.map(&:to_i)
res = 0
loop do
  even = 1
  nums.map! do |num|
    if num % 2 == 0
      num / 2
    else
      even = 0
      num
    end
  end
  if even == 1
    res += 1
  else
    break
  end
end
puts res
