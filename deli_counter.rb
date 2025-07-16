def line(deli)
  if deli.empty?
    puts "The line is currently empty."
  else 
    lineup = [] 
    i = 0
    until i == deli.length
      lineup.push("#{i + 1}. #{deli[i]}")
      i += 1
    end
    puts "The line is currently: #{lineup.join(" ")}"
  end
end

def take_a_number(deli, name)
  deli.push(name)
  puts "Welcome, #{name}. You are number #{deli.find_index(name) + 1} in line."
end
