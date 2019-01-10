require 'pry'
require_relative './project'

class Backer

  attr_accessor :backed_projects, :name

    # @@backed_projects = []

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    project.add_backer(self)
    # project.backers << project
  end

end #this is the end of the Backer class

bob = Backer.new("Bob")
awesome_project = Project.new("This is an Awesome Project")

bob.back_project(awesome_project)

# binding.pry
