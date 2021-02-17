h, w = gets.chomp.split.map(&:to_i)
mass = h.times.map {gets.chomp.chars}
sum = 0
1.upto(h-2) do |i|
  1.upto(w-2) do |j|
    if mass [i][j] == '#'
      if mass[i-1][j] == '.' && mass[i-1][j-1] == '.' && mass[i][j-1] == '.'
        sum += 1
      end
      if mass[i-1][j] == '.' && mass[i-1][j+1] == '.' && mass[i][j+1] == '.'
        sum += 1
      end
      if mass[i+1][j] == '.' && mass[i+1][j-1] == '.' && mass[i][j-1] == '.'
        sum += 1
      end
      if mass[i+1][j] == '.' && mass[i+1][j+1] == '.' && mass[i][j+1] == '.'
        sum += 1
      end
    else
      if mass[i-1][j] == '#' && mass[i-1][j+1] == '#' && mass[i][j+1] == '#'
        sum +=1
      end
      if mass[i-1][j] == '#' && mass[i-1][j-1] == '#' && mass[i][j-1] == '#'
        sum +=1
      end
      if mass[i+1][j] == '#' && mass[i+1][j+1] == '#' && mass[i][j+1] == '#'
        sum +=1
      end
      if mass[i+1][j] == '#' && mass[i+1][j-1] == '#' && mass[i][j-1] == '#'
        sum +=1
      end
    end
  end
end
puts sum
