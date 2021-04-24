n = gets.to_i
ans = 0
1.upto(n) do |i|
  flag = false
  copy = i
  while copy > 0
    if copy % 10 == 7
      flag = true
      break
    end
    copy /= 10
  end
  copy = i
  next if flag
  while copy > 0
    if copy % 8 == 7
      flag = true
      break
    end
    copy /= 8
  end
  ans += 1 if !flag
end
puts ans
