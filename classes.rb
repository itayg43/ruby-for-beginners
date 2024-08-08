# self here = scope of main

class House
  # self here = scope of House

  @@count=0

  # because of the scope - available only on the House class itself and not for its instances
  def self.count
    @@count
  end

  # because of the scope - available only on the House class itself and not for its instances
  def self.report_instances_count
    "There are #{count} instances of #{name}"
  end

  attr_accessor :color,:style

  def initialize(color:,style:)
    # self here = scope of house instance

    @color=color
    @style=style
    @@count+=1
  end

  def details
    "This is a #{color} #{style} house"
  end
end

puts House.report_instances_count

house = House.new(color:"blue",style:"craftsman")
puts house.details

puts House.report_instances_count