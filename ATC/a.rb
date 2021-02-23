h, w = gets.split.map(&:to_i)
seen = h.times.map { w.times.map { false } }
sh = 0
sw = 0
gh = 0
gw = 0
todo = []
moves = [[1, 0], [0, 1], [-1, 0], [0, -1]]
roots = h.times.map do |i|
  gets.chomp.chars
end
h.times do |i|
  w.times do |j|
    if roots[i][j] == 's'
      sh = i
      sw = j
    elsif roots[i][j] == 'g'
      gh = i
      gw = j
    end
  end
end
todo.push([sh, sw])
while !todo.empty? do
  sh, sw = todo.pop
  seen[sh][sw] = true
  moves.each do |di, dj|
    nh = sh + di
    nw = sw + dj
    next if nh < 0 || nw < 0 || nh >= h || nw >= w
    next if seen[nh][nw] || roots[nh][nw] == '#'
    todo.push([nh, nw])
  end
end
if seen[gh][gw]
  puts "Yes"
else
  puts "No"
end
