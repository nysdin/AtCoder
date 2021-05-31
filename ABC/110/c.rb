s = gets.chomp
t = gets.chomp
len = s.length
sn = Array.new(26, -1)
tn = Array.new(26, -1)
len.times do |i|
  a = s[i].ord - 97
  b = t[i].ord - 97
  if sn[a] != - 1 || tn[b] != -1
    if sn[a] != b || tn[b] != a
      puts 'No'
      return
    end
  end
  sn[a] = b
  tn[b] = a
end
puts 'Yes'
