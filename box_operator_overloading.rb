#!/usr/bin/env ruby

# + operator to vector addition of two box objects
# * operator to multiply box width and height by scalar
# - operator to negate the width and height of the box

class Box
  def initialize(w,h) # Initialize the width and height
    @width,@height = w, h
  end

  def +(other)        # Define _ to do vector addition
    Box.new(@width + other.width, @height + other.height)
  end

  def -@              # Define unary minus to negate width and height
    Box.new(-@width, -@height)
  end

  def *(scalar)       # To perform scalar multiplication
    Box.new(@width*scalar, @height*scalar)
  end
end

puts "This doesn't output anything"