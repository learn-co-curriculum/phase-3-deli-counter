def line(queue)
  if queue.empty?
    puts 'The line is currently empty.'
  else
    line = 'The line is currently:'
    queue.each_with_index do |cust, index|
      line += " #{index + 1}. #{cust}"
    end
    puts line
  end
end

def take_a_number(queue, new_cust)
  queue << new_cust
  puts "Welcome, #{new_cust}. You are number #{queue.length} in line."
end

def now_serving(queue)
  puts queue.empty? ? 'There is nobody waiting to be served!' : "Currently serving #{queue.shift}."
end
