n = gets.to_i
flag = false
ansx = 0
ansy = 0
ansh = 0
x = []
y = []
h = []
n.times do |i|
  xx, yy, hh = gets.split.map(&:to_i)
  x.push(xx)
  y.push(yy)
  h.push(hh)
end

flag = true
0.upto(100) do |i|
  0.upto(100) do |j|
    flag = true
    now_h = -1
    
    n.times do |k|
      nx = x[k]
      ny = y[k]
      nh = h[k]
      next if nh == 0
      hgt = nh + (nx-i).abs + (ny-j).abs
      if now_h == -1
        now_h = hgt
      elsif now_h != hgt
        flag = false
      end
    end
    
    n.times do |k|
      nx = x[k]
      ny = y[k]
      nh = h[k]
      next if nh != 0
      cor = now_h - (nx-i).abs - (ny-j).abs
      if cor > 0
        flag = false
      end
    end
    
    if flag
      ansh = now_h
      ansx = i
      ansy = j
    end
  end
end
puts [ansx, ansy, ansh] * ' '
