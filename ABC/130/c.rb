w, h, x, y = gets.split.map(&:to_i)
ans = [0, 0]
if w % 2 == 0 && h % 2 == 0
  if x == w / 2 && y == h / 2
    ans[1] = 1
  end
end
ans [0] = w*h/2.0
puts ans * " "
