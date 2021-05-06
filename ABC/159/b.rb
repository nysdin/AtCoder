s = gets.chomp
def palindrome?(s)
  len = s.length
  flag = true
  (len/2).times do |i|
    if s[i] != s[len-i-1]
      flag = false
    end
  end
  flag
end
sf = s[0...(s.length/2)]
se = s[((s.length/2)+1)...(s.length)]
if palindrome?(s) && palindrome?(sf) && palindrome?(se)
  puts 'Yes'
else
  puts 'No'
end
