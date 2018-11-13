# Exercise 1
# Define a method called double that accepts an argument called my_number and returns that number multiplied by 2.

def double(my_number)
    return my_number * 2
end

puts double(4)
puts double(10)
puts double(-7)


# Exercise 2
# Define a method called negative? that accepts a number as an argument and returns a boolean (true/false) indicating whether that number is negative or not.

def negative?(number)
    return number > 0
end

puts negative?(3)
puts negative?(44)
puts negative?(-8)

# Exercise 3
# Define a method called is_even? that accepts a number as an argument and returns a boolean (true/false) indicating whether that number is even or not (HINT: use the % operator).

def is_even?(number)
    return number % 2 == 0
end

puts is_even?(6)
puts is_even?(3)
puts is_even?(98)

# Exercise 4
# Define a method that accepts a string as an argument and returns false if the word is less than 8 characters long (or true otherwise).

def is_short?(string)
    return string.length < 8
end

puts is_short?("string")
puts is_short?("Azerbaijan")
puts is_short?("1234")

# Exercise 5
# In the far future, everyone spells their names backwards. Create a method called greet_backwards that greets people using their reversed names. For example:

def greet_backwards(name)
    return "Hello, #{name.to_s.reverse * 2}! Welcome home."
end

puts greet_backwards('Bob')
puts greet_backwards('Shirly')
puts greet_backwards('Sue')
puts greet_backwards('Andy')

# Exercise 6
# Create a method that converts Fahrenheit temperatures to Celsius in a file called exercise6.rb.

# Start with prompting the user for a temperature in Fahrenheit. Then call your method and pass in the user input as a parameter.

# Your method should:

# have one parameter: the temperature in Fahrenheit
# do the conversion with this formula: C = (F - 32) x 5/9
# ensure that the parameter you pass in is a number by converting it with to_i
# Output the result in a full sentence using string interpolation.

# Don't forget to commit your progress as you go along. Once you're done, commit one last time and push it to github.

# TIP: Don't start your variable names with capital letters, otherwise Ruby will think you want to make a constant instead of a variable. Making a constant is a way of giving a name to a value that won't ever be reassigned.

puts "Please enter a temperature in Fahrenheit:"
fahrenheit = gets.chomp.to_f

def fahrenheit_to_celsius(f)
    return "#{((f - 32) * (5.0 / 9)).round(2)} C"
end

puts fahrenheit_to_celsius(fahrenheit)

# Exercise 7
# Let's create a method wrap_text that wraps text in symbols of our choice. For example:

def wrap_text(text, wrapper)
    return (wrapper + text + wrapper)
end

puts wrap_text('hello', '===')
puts wrap_text('what a nice wrapper', '!**--__--**!')
puts wrap_text('__', '((00))')

# wrap_text('hello', '===')
# should return:

# ===hello===

# Now that this method works, how can we use it (without modifying the method) to generate the following string?

# ---===###new message###===---

inner1 = wrap_text("new message", "###")
inner2 = wrap_text(inner1, "===")
puts wrap_text(inner2, "---")

# Note that wrap_text needs to return a value rather than print one.

# Hints:

# You'll have to call the same method multiple times.
# Try breaking down the problem into smaller pieces that you know wrap_text can solve.

# Exercise 8
# Read the following Ruby code that does not follow the principle of "don't repeat yourself".
# Rewrite it to use methods instead of repeating code.
# Consider what your arguments and return values should be.

def ask_distance(person)
    puts "How far did #{person} run (in metres)?"
    distance = gets.to_f
    return distance
end

def ask_minutes(person, distance)
    puts "How long (in minutes) did #{person}run take to run #{distance} metres?"
    minutes = gets.to_f
    return minutes
end

def calculate_speed(distance, minutes)
    seconds = minutes * 60
    speed = distance / seconds
    return speed
end

def speed_per_person(person)
    person_distance = ask_distance(person)
    person_minutes = ask_minutes(person,person_distance)
    speed = calculate_speed(person_distance, person_minutes)
end

speed1 = speed_per_person("Usain")
speed2 = speed_per_person("Donovan")
speed3 = speed_per_person("Roadrunner")

if speed3 > speed2 && speed3 > speed1
  puts "Person 3 was the fastest at #{speed3} m/s"
elsif speed2 > speed3 && speed2 > speed1
  puts "Person 2 was the fastest at #{speed2} m/s"
elsif speed1 > speed3 && speed1 > speed2
  puts "Person 1 was the fastest at #{speed1} m/s"
elsif speed1 == speed2 && speed2 == speed3
  puts "Everyone tied at #{speed1} m/s"
else
  puts "Well done everyone!"
end
