#!/usr/bin/env ruby

# Class Constants
# You can define a constant inside a class by assigning a direct numeric string value
# to a variable which is defined without using either @ or @@. By convention we keep constant names
# in uppercase.

# Once a constant is defined, you can not change its value but you can access a constant
# directly inside a class much like a variable but if you want to access a constant outside of the class
# then you would have to use classname::constant

# define a class
class Box
  BOX_COMPANY = "TATA Inc"
  BOXWEIGHT = 10

  # constructor method
  def initialize(w,h)
    @width, @height = w, h
  end

  # instance method
  def area
    @width * @height
  end
end

# create an object
box = Box.new(10, 20)

# call instance methods
a = box.area
puts "Area of the box is : #{a}"
puts Box::BOX_COMPANY
puts "Box weight is: #{Box::BOXWEIGHT}"