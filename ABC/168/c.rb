a, b, h, m = gets.split.map(&:to_i)
j = h + m / 60.0
ac = 360 * ((h + m / 60.0) / 12.0)
bc = 360 * (m / 60.0)
s = (ac-bc).abs 
if s > 180
  s = 360 - s
end
s = s / 180.0 * Math::PI
puts Math.sqrt(a*a + b*b - 2*a*b*Math.cos(s))
