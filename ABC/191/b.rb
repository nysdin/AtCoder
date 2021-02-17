n, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
a.delete(x)
a.each do |n|
  print("#{n} ")
end
