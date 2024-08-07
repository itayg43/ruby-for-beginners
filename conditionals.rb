EMAIL="test@email.com"
PASSWORD="password"

VAULT = {
  "aws":{
    username:"test",
    password:"password"
  }
}

puts
puts "Welcome, Please sign in"
puts

print "Enter email: "
email_input=gets.chomp

print "Enter password: "
password_input=gets.chomp

if email_input != EMAIL || password_input != PASSWORD
  puts "Invalid credentials"
  exit
end

# unless email_input != EMAIL
# end

puts
puts "Hello, #{EMAIL}"
puts

puts "1. Add new service credentials"
puts "2. Retrive an existing services credentials"
puts "3. Exit"

puts
print "Enter your selection: "
selection_input=gets.chomp

case selection_input
when "1"
  print "Enter the name of the service: "
  new_service_name=gets.chomp
  
  print "Enter the username for this new service: "
  new_service_username=gets.chomp

  print "Enter the password for this new service: "
  new_service_password=gets.chomp

  new_service_name_sym=new_service_name.to_sym

  VAULT[new_service_name_sym]={}
  VAULT[new_service_name_sym][:username]=new_service_username
  VAULT[new_service_name_sym][:password]=new_service_password

when "2"
  print "Enter the name of the service: "
  requested_service_name=gets.chomp

  requested_service_credentials=VAULT[requested_service_name.to_sym]

  requested_service_credentials.each do |key, val|
    puts "#{key}: #{val}"
  end

when "3"
  puts "Exiting the program"
  exit

else
  puts "Unknown selection, exiting the program"
  exit
end