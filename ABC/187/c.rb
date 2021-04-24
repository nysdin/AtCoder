require 'set'
n = gets.to_i
s = Set.new
s_ex = Set.new
ans = ''
n.times do |i|
  str = gets
  if str[0] == '!'
    s_ex.add(str.delete('!'))
  else
    s.add(str)
  end
end
s.each do |a|
  if s_ex.include?(a)
    ans = a
    break
  end
end

if ans.length == 0
  puts 'satisfiable'
else
  puts ans
end
