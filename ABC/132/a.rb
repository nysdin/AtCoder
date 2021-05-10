s = gets.chomp
h = Hash.new
h.default = 0
4.times do |i|
  h[s[i]] += 1
end
flag = true
if h.length != 2
  flag = false
else
  h.each do |k, v|
    if v != 2
      flag = false
    end
  end
end
