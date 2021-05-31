require 'set'
n = gets.to_i
w = []
s = Set.new
pretail = ''
n.times do |i|
  str = gets.chomp
  if s.include?(str)
    puts 'No'
    exit
  end
  s.add(str)
  if i != 0 && pretail != str[0]
    puts 'No'
    exit
  end
  pretail = str[-1]
end
puts 'Yes'
