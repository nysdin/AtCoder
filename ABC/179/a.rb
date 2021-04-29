s = gets.chomp!
if s[-1] == 's'
  s += 'es'
else
  s += 's'
end
puts s
