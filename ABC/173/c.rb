h, w, k = gets.split.map(&:to_i)
mass = h.times.map {|i| gets.chomp.chars}
ans = 0
(1 << (h+w)).times do |i|
  cp = Marshal.load(Marshal.dump(mass))
  now = 0
  (h+w).times do |j|
    if ((i >> j) & 1) == 1
      if j < h
        cp[j] = ['!'] * w
      else
        h.times do |l|
          cp[l][j-h] = '!'
        end
      end
    end
  end
  h.times do |j|
    w.times do |l|
      if cp[j][l] == '#'
        now += 1
      end
    end
  end
  if now == k
    ans += 1
  end
end
puts ans
