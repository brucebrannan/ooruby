#!/usr/bin/env ruby

# You can add new functionality in a derived class but you can also change the behaviour
# of the defined method in the parent class.  You do so by keeping the method name the same
# and overriding the functionality of the method:

# define a class
class Box

  # constructor method
  def initialize(w,h)
    @width, @height = w, h
  end

  # instance method
  def area
    @width * @height
  end
end

# define a subclass
class BigBox < Box

  # change existing area method as follows
  def area
    #@area = @width * @height
    #puts "Big box area is : #@area"
    puts "Big box area is : #{super}"
  end
end

# create an object
box = BigBox.new(10, 20)

# print the area using the orverriden method
box.area