def line(array)
  if array.length == 0
    puts "The line is currently empty."
  else
    line_description = "The line is currently:"
    array.each.with_index(1) do |name, index|
      line_description += " #{index}. #{name}"
    end
    puts line_description
  end
end

def take_a_number(array, name)
  puts "Welcome, #{name}. You are number #{array.length + 1} in line."
  array.push(name)
end

def now_serving(array)
  if array.length == 0
    puts "There is nobody waiting to be served!"
  else
    current_customer = array.shift
    puts "Currently serving #{current_customer}."
  end
end
