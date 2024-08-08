# constants

EMAIL="email"
PASSWORD="password"

VAULT = {
  "aws":{
    username:"username",
    password:"password"
  }
}

# functions

def prompt(message:)
  print message
  
  return gets.chomp
end

def is_valid_credentials(email:,password:)
  return false if email != EMAIL || password != PASSWORD
   
  return true
end

def print_selection_menu
  puts "1. Set service credentials"
  puts "2. Get service credentials"
  puts "3. Exit"
end

def set_service_credentials_handler
  service_name=prompt(message:"Service name: ").to_sym
  service_username=prompt(message:"Service username: ") 
  service_password=prompt(message:"Service password: ")
  
  VAULT[service_name]={}
  VAULT[service_name][:username]=service_username
  VAULT[service_name][:password]=service_password
end

def get_service_credentials_handler
  service_name=prompt(message:"Service name: ").to_sym

  service_credentials=VAULT[service_name]

  service_credentials.each do |key, val|
    puts "#{key}: #{val}"
  end
end

# main

email_input=prompt(message:"Enter email: ")
password_input=prompt(message:"Enter password: ")

is_valid = is_valid_credentials(email:email_input,password:password_input)

if is_valid == false
  puts "Invalid credentials"
  exit
end

loop do
  print_selection_menu

  selection_input=prompt(message:"Enter your selection: ")

  case selection_input
  when "1"
    set_service_credentials_handler

  when "2"
    get_service_credentials_handler

  when "3"
    puts "Exiting the program"
    exit

  else
    puts "Unknown selection, exiting the program"
    exit
  end
end