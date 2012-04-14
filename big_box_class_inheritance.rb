#!/usr/bin/env ruby

# Inheritance allows us to define a class in terms of another class
# It provides an opportunity to reuse the code functionality and fast implementation
# time but unfortunately Ruby does not support Multiple levels of inheritances but
# Ruby supports mixins
# A mixin is like a specialized implementation of multiple inheritance in which only the
# interface portion is inherited

# When creating a class, you can designate it to inherit the members of an existing class
# This existing class is called the base class or superclass
# The new class is referred to the derived class or sub-class

# Ruby also supports the concept of subclassing ie. inheritance and following example
# explains the concept.  To extend a class just add the < character and the name of the superclass
# to your class statement:

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

  # add a new instance method
  def print_area
    @area = @width * @height
    puts "Big box area is : #@area"
  end
end

# create an object
box = BigBox.new(10,20)

# print the area
box.print_area