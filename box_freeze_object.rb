#!/usr/bin/env ruby

# The freeze method in Object allows us to prevent an object from being changed.
# Any object can be frozen by invoking Object.freeze. A frozen object may not be modified:
# you can't change its instance variables.

# You can check if a given object is already frozen or not using Object.frozen? method which
# returns true if frozen else false if not

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
end

# create an object
box = Box.new(10, 20)

# let us freeze this object
box.freeze
if( box.frozen? )
  puts "Box object is frozen object"
else
  puts "Box object is normal object"
end

# now try using setter methods
box.width = 30
box.height = 50

# use accessor methods
x = box.width
y = box.height

puts "Width of the box is : #{x}"
puts "Height of the box is: #{y}"
