#!/usr/bin/env ruby

# Instance methods may have public, private, or protected protection
# Ruby does not apply any access control over instance and class variables

# Public Methods: can be called by anyone (default), except for initialize which is private

# Private Methods: cannot be accessed or even viewed from outside the class. Only class methods
# can access private members

# Protected Methods: can be invoked only by objects of the defining class and its subclasses.
# Access is kept within the family

# Example to show all three access modifiers:

# define a class
class Box

  # constructor method
  def initialize(w,h)
    @width, @height = w, h
  end

  # instance method by default it is public
  def area
      width() * height
  end

  # define private accessor methods
  def width
    @width
  end

  def height
    @height
  end

  # make them private
  private :width, :height

  # instance method to print area
  def print_area
    @area = width() * height
    puts "Big box area is: #@area"
  end

  # make it protected
  protected :print_area
end

# create an object
box = Box.new(10, 20)

# call instance methods
a = box.area
puts "Area of the box is : #{a}"

# try to call protected or private methods
box.print_area