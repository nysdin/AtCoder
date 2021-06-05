N = gets.to_i
aa = gets.split.map(&:to_i)
aa.sort!
puts (aa[-1] - aa[0]).abs
