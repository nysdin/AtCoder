n = gets.to_i
roots = []
ans = 0.0
c = 0
n.times do |i|
  x, y = gets.split.map(&:to_i)
  roots.push([x,y])
end
perm = n.times.map{|i| i}
perm.permutation.to_a.each do |course|
  c += 1
  course.push(course[-1])
  n.times do |i|
    v = course[i]
    w = course[i+1]
    ans += Math.sqrt((roots[v][0] - roots[w][0])**2 + 
      (roots[v][1] - roots[w][1])**2)
  end
end
puts ans / c
