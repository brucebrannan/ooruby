#!/usr/bin/env ruby

# Setter methods provide a way to set the values of those variables
# from outside the class

# define a class
class Box
  # constructor method
  def initialize(w,h)
    @width, @height = w, h
  end

  # accessor methods
  def width
    @width
  end
  def height
    @height
  end

  # setter methods
  def width=(value)
    @width = value
  end
  def height=(value)
    @height = value
  end
end

# create an object
box = Box.new(10,20)

# use setter methods
box.width = 30
box.height = 50

# user accessor methods
x = box.width()
y = box.height()

# output
puts "Width of the box is : #{x}"
puts "Height of the box is : #{y}"
