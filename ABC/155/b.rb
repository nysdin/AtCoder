n = gets.to_i
a = gets.split.map(&:to_i)
flag = true
n.times do |i|
  if a[i] % 2 == 0
    if a[i] % 3 != 0 && a[i] % 5 != 0
      flag = false
    end
  end
end
if flag
  puts 'APPROVED'
else
  puts 'DENIED'
end
