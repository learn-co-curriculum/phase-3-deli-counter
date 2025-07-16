def line current_line
  return puts "The line is currently empty." if current_line.length <= 0
  puts "The line is currently:#{(current_line.map.with_index { |person, index| " #{index + 1}. #{person}" }).join}"
end

def take_a_number the_line, customer
  the_line << customer
  puts "Welcome, #{customer}. You are number #{the_line.length} in line."
end

def now_serving the_line
  return puts "There is nobody waiting to be served!" if the_line.length == 0
  puts "Currently serving #{the_line.first}."
  the_line.shift
end
