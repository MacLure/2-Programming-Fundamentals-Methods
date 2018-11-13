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
