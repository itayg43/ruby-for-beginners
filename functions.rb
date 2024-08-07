def say1(greeting, name)
  puts "#{greeting}, #{name}"
end

say1("Hello", "Itay")

# default value
def say2(greeting="Hello", name)
  puts "#{greeting}, #{name}"
end

say2("Itay")

#
def say3(greeting:, name:)
  puts "#{greeting}, #{name}"
end

# order dont matter
say3(greeting:"Hello",name:"Itay")

# default value
def say3(greeting:"Hello", name:)
  puts "#{greeting}, #{name}"
end

# order dont matter
say3(name:"Itay")