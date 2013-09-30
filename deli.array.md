# Deli Counter - Take a Number

You need to program the "Take a Number" feature for a deli. At the start, the deli is empty and is represented by an empty array.

1. Build a method that a new customer will use when entering our deli. The method, `take_a_number`, should accept the current line of people, along with the new person's name, and return their position in line (and no 0 index, these are normal people, if they are 7th in line, tell them that, not 6).

2. Build a method `next`. This method should call out (via puts) the next person in line and remove them from the line.

3. Build a method `line` that shows people their current place in line.

Example usage:

```ruby
katz_deli = []

take_a_number(katz_deli, "Ada") #=> "1"
take_a_number(katz_deli, "Grace") #=> "2"
take_a_number(katz_deli, "Kent") #=> "3"

line(katz_deli) #=> "The line is currently: 1. Ada 2. Grace 3. Kent"

next(katz_deli) #=> "Currently serving Ada"

line(katz_deli) #=> "The line is currently: 1. Grace 2. Kent"

take_a_number(katz_deli, "Matz") #=> "3"

line(katz_deli) #=> "The line is currently: 1. Grace 2. Kent 3. Matz"

next(katz_deli) #=> "Currently serving Grace"

line(katz_deli) #=> "1. Kent 2. Matz"
```