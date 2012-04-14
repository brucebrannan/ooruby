#!/usr/bin/env ruby

#Class Information
# If class definitions are executable code, this implies that they execute in the
# context of some object: self must reference something. Let's find out what it is.

class Box
  # print class information
  puts "Type of self = #{self.type}"
  puts "Name of self = #{self.name}"
end

# This code gives an error:
# 9:in `<class:Box>': undefined method `type' for Box:Class (NoMethodError)