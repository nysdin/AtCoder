nums = gets.split.map(&:to_i)
nums.sort!.reverse!
b = nums[2]
a = nums[0,2]
puts a.join.to_i + b
