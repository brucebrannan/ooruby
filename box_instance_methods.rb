#!/usr/bin/env ruby

# Instance methods are defined in the same way as an¥ other method using
# the def keyword and they can be used using a class instance
# Their functionality is not limited to access the instance variables

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

# create an object
box = Box.new(10, 20)

# call instance methods
a = box.area

# output
puts "Area of the box is : #{a}"
