n = gets.to_i
nums = gets.split.map(&:to_i)
alice = 0
bob = 0
turn = 0
nums.sort!.reverse!
nums.each do |num|
  if turn == 0
    alice += num
  else
    bob += num
  end
  turn = 1 - turn
end
puts alice - bob
