#!/usr/bin/env ruby

# Create object using allocate:
# There may be a situation when you want to create an object without calling its constructor
# initialize ie. using new method, in such case you can call allocate which will create an
# uninitialized object for you as in the following example:

#!/usr/bin/ruby -w

# define a class
class Box
  attr_accessor :width, :height

  # constructor method
  def initialize(w,h)
    @width, @height = w, h
  end

  # instance method
  def getArea
    @width * @height
  end
end

# create an object using new
box1 = Box.new(10, 20)

# create another object using allocate
box2 = Box.allocate

# call instance method using box1
a = box1.getArea()
puts "Area of the box is : #{a}"

# call instance method using box2
a = box2.getArea()
puts "Area of the box is : #{a}"