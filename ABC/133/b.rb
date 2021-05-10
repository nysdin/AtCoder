l, r = gets.split.map(&:to_i)
len = r-l+1
if len > 2019
  puts 0
  return
else
  nums = (r-l+1).times.map{|i| (l+i)%2019}
end
ans = 100000
len.times do |i|
  (i+1).upto(len-1) do |j|
    l = nums[i] * nums[j] % 2019
    if ans > l
      ans = l
    end
  end
end
puts ans
