require 'pry'

class Backer

  attr_accessor :backed_projects, :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end

def back_project(project)
  @backed_projects << project
  project.backers << self
  # item = @backed_projects << project
  # Project.add_backer(item)
  # Project.add_backer
  #self.backer_projects <<
  # Projecs.backers << backer
end

# def back_project(backer)
#   Project.backers << backer
# end

end
