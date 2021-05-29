n = gets.to_i
v = gets.split.map(&:to_i)

anse = 0
anso = 0
onums = {}
onums.default = 0
ocount = 0
enums = {}
enums.default = 0
ecount = 0
max = 0

n.times do |i|
  a = v[i]
  if i % 2 == 0
    enums[a] += 1
  else
    onums[a] += 1
  end
end

onums.each do |k, v|
  if v > ocount
    ocount = v
    anso = k
  end
end

enums.each do |k, v|
  if v > ecount
    ecount = v
    anse = k
  end
end

if anse == anso
  tmp = 0
  onums.each do |k, v|
    if v > tmp && k != anse
      tmp = v
    end
  end
  now = n - ecount - tmp    

  tmp = 0
  enums.each do |k, v|
    if v > tmp && k != anso
      tmp = v
    end
  end
  ans = n - tmp - ocount
  if ans < now
    puts ans
  else
    puts now
  end
else
  puts n - ecount - ocount
end
