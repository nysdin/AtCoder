l = gets.to_i
numerator = ((l-11)..(l-1)).to_a
denominator = [11,10,3,3,2,2,2,7,2,3,5,2,2,3,2]
ans = 1
 
denominator.each_with_index do |d, i|
  numerator.sort!.reverse!
  numerator.each_with_index do |n, j|
    if n % d == 0
      numerator[j] = n / d
      break
    end
  end
end
numerator.each do |n|
  ans *= n
end
puts ans
