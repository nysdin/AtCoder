x = gets.to_i
while true
  y = Math.sqrt(x).to_i
  flag = true
  2.upto(y) do |n|
    if x % n == 0
      flag = false
      break
    end
  end
  if flag
    break
  end
  x += 1
end
puts x
