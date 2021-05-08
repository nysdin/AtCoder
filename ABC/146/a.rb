s=gets.chomp
youbi = ['NG','SAT','FRI','THU','WED','TUE','MON', 'SUN']
ans = 0
8.times do |i|
  if youbi[i] == s
    ans = i
    break
  end
end
puts ans
