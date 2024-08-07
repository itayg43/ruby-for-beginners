credentials={private_key:"privateKey",public_key:"publicKey"}
p credentials

puts credentials[:private_key]

credentials[:region]="aws-east-2"
p credentials

p credentials.size

p credentials.keys
p credentials.values

credentials.delete(:region)
p credentials

me = {name:"Itay",age:31,hobbies:["programming","motor sports"]}
p me
p me[:hobbies]
p me[:hobbies].join(", ")

me[:hobbies].each do |hobby|
  p hobby.capitalize
end

me.each do |details|
  p details
end

me.each do |key, val|
  p "#{key} => #{val}"
end

pets = {
  dog:{
    name:"Spot"
  },
  cat:{
    name:"Yarn"
  }
}
p pets
p pets[:dog]
p pets[:dog][:name]
p pets.dig(:dog, :name)