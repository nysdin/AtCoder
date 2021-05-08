n = gets.to_i
ans = 0
shougen = []
n.times do |i|
  m = gets.to_i
  s = []
  m.times do |j|
    x, y = gets.split.map(&:to_i)
    s.push([x-1,y])
  end
  shougen.push(s)
end
(1<<n).times do |x|
  sum = 0
  flag = true
  person = Array.new(n, false)
  n.times do |i|
    if (x>>i) & 1 == 1
      sum += 1
      person[i] = true
    end
  end
  shougen.each_with_index do |per, i|
    next if person[i] == false
    per.each do |v, w|
      if w == 0 && person[v] == true
        flag = false
        break
      elsif w == 1 && person[v] == false
        flag = false
        break
      end
    end
    break if !flag
  end
 
  if flag && sum >= ans
    ans = sum
  end
end
puts ans
