n, x = gets.split.map(&:to_i)
s = gets.chomp.chars
s.each do |q|
  if q == 'o'
    x += 1
  else
    if x > 0
      x -= 1
    end
  end
end
puts x
