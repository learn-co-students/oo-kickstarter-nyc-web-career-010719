require 'pry'
require_relative 'project'

class Backer
  @@backed_projects = []

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def backed_projects
    @@backed_projects
  end

  def back_project(project)
    # binding.pry
    # t1 = Project.new(title)
    @@backed_projects << project
    Project.backers << self
    # binding.pry
  end

  def self.projects
    @@backed_projects
  end


end # end of class Backer
