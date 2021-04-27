n = gets.to_i
xy = []
ans = false
n.times do |i|
  x, y = gets.split.map(&:to_i)
  xy.push([x, y])
end
0.upto(n-1) do |i|
  (i+1).upto(n-1) do |j|
    (j+1).upto(n-1) do |k|
      x1 = xy[i][0]
      y1 = xy[i][1]
      x2 = xy[j][0]
      y2 = xy[j][1]
      x3 = xy[k][0]
      y3 = xy[k][1]
      
      if x1 - x2 == 0 && x2 - x3 == 0
        ans = true
        break
      elsif x1 - x2 == 0 || x2 - x3 == 0
        next
      end
      
      if ((y1 - y2).to_f / (x1 - x2)) == ((y2 - y3).to_f / (x2 - x3))
        ans = true
        break
      end
      
    end
  end
end
if ans
  puts 'Yes'
else
  puts 'No'
end
