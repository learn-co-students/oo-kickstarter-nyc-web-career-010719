require 'pry'
require_relative './lib/backer.rb'
require_relative './lib/project.rb'
require_relative './lib/pb.rb'

p1 = Project.new("project1")
p2 = Project.new("project2")

b1 = Backer.new("name1")
b2 = Backer.new("name2")

pb1 = ProjectBacker.new(p1,b1)
pb2 = ProjectBacker.new(p1,b2)







binding.pry
