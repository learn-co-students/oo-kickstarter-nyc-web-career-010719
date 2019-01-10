require 'pry'
require_relative './project.rb'
require_relative './backer.rb'


p1 = Project.new("title")
b1 = Backer.new("name")

puts p1, b1

binding.pry

true
