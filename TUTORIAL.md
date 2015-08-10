# Guide to Solving and Reviewing Deli Counter

After running `rspec` you'll see we have seven in total to pass. Let's start with 

### `#line`

```bash
#line
    there is nobody in line
      should say the line is empty (FAILED - 1)

Failures:

  1) Deli Counter #line there is nobody in line should say the line is empty
     Failure/Error: line(katz_deli)
     NoMethodError:
       undefined method `line' for #<RSpec::ExampleGroups::DeliCounter::Line::ThereIsNobodyInLine:0x007fc1f39fdf28>
```
To pass this `undefined method 'line'` we have to create a `line` method in our `deli_counter.rb`.

```ruby
def line
end
```
When we run `rspec --fail-fast`, we'll see the test is still not passing but the error message changed to `wrong number of arguments (1 for 0)`. Our `line` method should accept and `katz_deli` argument.

```ruby
def line(katz_deli)
end
```

Now our method should say `"The line is currently empty."` if there is no one in line.

```ruby
def line(katz_deli)
  if katz_deli.length == 0
    puts "The line is currently empty."
  end
end
```
Our first test is passing. But we did not tell our method what to do when there are people in line. How are we going to do that. How about we add a `else` statement to our `if` clause.

```ruby
def line(katz_deli)
  if katz_deli.length == 0
    puts "The line is currently empty."
  else
    current_line = "The line is currently:"
    katz_deli.each.with_index(1) do |person, i|
      current_line << " #{i}. #{person}"
    end
    puts current_line
  end
end
```
Here we are using the `each.with_index(1)` method because we can just pass in the number we want our index to start at. We could have also used the `each_with_index` method, but then we would also have to add 1 to our index because no line starts at 0. Our code in the each block would look like this `current_line << " #{i+1}. #{person}"`. 

### `#take_a_number`


When we run our test suite, we'll have two tests passing and our third error message will be `undefined method `take_a_number'`. Our method will also take in two arguments, the line and a name.

```ruby
def take_a_number(katz_deli, name)
end
```

After defining the method with it's two arguments our error message will look like this :

```bash
 #take_a_number
    there is nobody in line
      should add a person to the line (FAILED - 1)

Failures:

  1) Deli Counter #take_a_number there is nobody in line should add a person to the line
     Failure/Error: expect(katz_deli).to eq(["Ada"])
       
       expected: ["Ada"]
            got: []
```

To pass this test we will push the name we passed into the line.

```bash
Failures:

  1) Deli Counter #take_a_number there is nobody in line should add a person to the line
     Failure/Error: expect($stdout).to receive(:puts).with("Welcome, Ada. You are number 1 in line.")
       (#<IO:0x007f82920ca550>).puts("Welcome, Ada. You are number 1 in line.")
           expected: 1 time with arguments: ("Welcome, Ada. You are number 1 in line.")
           received: 0 times
```

We also have to puts a welcome message.

```ruby
def take_a_number(katz_deli, name)
  katz_deli << name
  puts "Welcome, #{name}. You are number #{katz_deli.length} in line."
end
```

### `#now_serving`

Now onto our last method we have to write for this lab.

```ruby
def now_serving(katz_deli)
end
```
This method should puts `"There is nobody waiting to be served!"` if now one is in line. Should also puts `("Currently serving (...).")`, the (...) being the first person's name if there is someone in line and remove that from the line.

```ruby
def now_serving(katz_deli)
  if katz_deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.first}."
    katz_deli.shift
  end
end
```

All our test are passing now.
