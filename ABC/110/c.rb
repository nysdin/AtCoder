s = gets.chomp
t = gets.chomp
len = s.length
sh = Hash.new(0)
th = Hash.new(0)
len.times do |i|
  sh[s[i]] += 1
  th[t[i]] += 1
end
sn = Hash.new(0)
tn = Hash.new(0)
sh.each do |k, v|
  sn[v] += 1
end
th.each do |k, v|
  tn[v] += 1
end
sl = sh.length
tl = th.length
if sl != tl
  puts 'No'
else
  sn.each do |k, v|
    if tn[k] != v
      puts 'No'
      return
    end
  end
  puts 'Yes'
end
