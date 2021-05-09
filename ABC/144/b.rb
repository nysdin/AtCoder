n = gets.to_i
ans = 'No'
1.upto(9) do |i|
  i.upto(9) do |j|
    if i * j == n
      ans = 'Yes'
    end
  end
end
puts ans
