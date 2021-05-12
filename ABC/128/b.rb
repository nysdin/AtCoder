n = gets.to_i
rest = n.times.map{|i|gets.chomp.split.push(i+1)}
rest.sort_by!{|k, v| [k, -(v.to_i)]}
n.times do |i|
  puts rest[i][2]
end
