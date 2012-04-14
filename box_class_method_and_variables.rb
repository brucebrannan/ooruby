#!/usr/bin/env ruby

# A class variable is shared between all instances of a class
# There is one instance of the variable and it is accessed by object instances
# Class variables are prefixed with @@ and must be initialized within the class definition

# A class method is defined using def self.methodname() and ends with end
# It is called using classname.methodname

class Box
  # Initialize our class variables
  @@count = 0
  def initialize(w,h)
    # assign instance variables
    @width, @height = w, h

    @@count +=1
  end

  # use lowercase and underscore
  def self.print_count()
    puts "Box count is : #@@count"
  end
end

# create two objects
box1 = Box.new(10, 20)
box2 = Box.new(30, 100)

#call class method to print box count
Box.print_count
