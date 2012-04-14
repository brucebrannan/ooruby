#!/usr/bin/env ruby

# The initialize method:
# Useful when you want to initialize some class variables at the
# time of object creation
# Preceded by def

# The instance variables:
# A kind of class attributes and they become properties of objects
# once the objects are created using the class
# Every object's attributes are assigned individually and share no value
# with other objects.
# They are accessed using the @ operator within the class but to access
# them outside the class we use public methods which are called accessor
# methods.

# The accessor and setter methods:
# to make the variables available fro outside the class they must be defined
# within accessor methods, these accessor methods are also known as getter
# methods.

# Example of class definition, initialize method, accessor & setter methods

# define a class
class Box
  # constructor method
  def initialize(w,h)
    @width, @height = w, h
  end

  # accessor methods
  def print_width
    @width
  end

  def print_height
    @height
  end
end

# create an object
box = Box.new(10, 20)

# use accessor methods
x = box.print_width
y = box.print_height

# output width and height
puts "Width of the box is : #{x}"
puts "Height of the box is : #{y}"
