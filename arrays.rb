arr = [1,2,3,4,5]

puts arr[0]
puts arr.first

puts arr[-1]
puts arr.last

print arr.reverse
puts

arr.push(6)
arr << 7
arr.pop
print arr
arr.pop

puts

arr.prepend(0)
print arr
arr.shift
puts
print arr
puts

puts arr.length
puts arr.size

framework = ["Ruby","on","Rails"]
print framework
puts

puts framework.join(" ")

print "Ruby on Rails".split

puts

print "Ruby on Rails".split.join.split("")
puts
print "Ruby on Rails".scan(/\w/)

arr1 = [6,7,8,9,10]

combined_arr = arr+arr1
puts
print combined_arr

a=[1,2,3]
b=[3,4,5]
uniq_for_a=a-b
puts
print uniq_for_a
puts

puts arr.empty?

puts arr.include?(3)