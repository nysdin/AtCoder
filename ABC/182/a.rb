a, b = gets.split.map(&:to_i)
limit = 2 * a + 100
puts limit - b > 0 ? limit - b : 0
