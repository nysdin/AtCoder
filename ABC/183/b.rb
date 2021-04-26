sx, sy, gx, gy = gets.split.map(&:to_i)
sy = -sy
a = (gy - sy).to_f / (gx - sx)
b = gy - a * gx
puts -b / a
