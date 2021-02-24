r, c = gets.split.map(&:to_i)
sy, sx = gets.split.map(&:to_i)
gy, gx = gets.split.map(&:to_i)
roots = r.times.map{|i| gets.chomp.chars}
seen = r.times.map{|i| c.times.map{|j| -1}}
dx = [1, 0, -1, 0]
dy = [0, 1, 0, -1]
sy -= 1
sx -= 1
seen[sy][sx] = 0
todo = [[sy,sx]]
while !todo.empty? do
  sy, sx = todo.shift
  4.times do |i|
    ny = sy + dy[i]
  	nx = sx + dx[i]
    next if ny <= 0 || nx <= 0 || ny >= r-1 || ny >= c-1
    next if seen[ny][nx] != -1 || roots[ny][nx] == '#'
    todo.push([ny, nx])
    seen[ny][nx] = seen[sy][sx] + 1
  end
end
p seen[gy-1][gx-1]
