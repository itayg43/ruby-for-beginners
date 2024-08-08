# basic
5.times do |i|
  puts "#{i} Looping..."
end

5.times {|i| puts "#{i} Looping.."}

1.upto(5) {|n| puts "#{n} Looping up..."}

5.downto(1) {|n| puts "#{n} Looping down..."}

# while
n=0
while n <= 5
  puts "#{n} <= 5"
  n+=1
end

# until
m=0
until m>5
  puts "#{m} <= 5"
  m+=1
end

# array - each
numbers = [1,2,3,4,5,-6,-7,-8,-8,-9]
numbers.each {|n| puts "#{n}"}

# array - map
negative_numbers=[-1,-2,-3,-4,-5]
abs_numbers=negative_numbers.map {|n| n.abs}
p abs_numbers

puts ["collin","bob"].map {|name| name.capitalize}
puts ["collin","bob"].map(&:capitalize)

# array - filter
positive_numbers=numbers.filter {|n| n.positive?}
p positive_numbers