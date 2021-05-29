n = gets.chomp
a = n[0]
ans = a * 3
if ans >= n
  puts ans
else
  puts (a.ord+1).chr * 3
end
