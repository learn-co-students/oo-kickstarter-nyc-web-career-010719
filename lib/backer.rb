class Backer

  attr_accessor :backed_projects
  attr_reader :name

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    #project.add_backer_noloop(self)
    project.backers << self
    #also adds backer to project's backers array
    # projects backets array  = @backers
  end

end

#project.add_backer(self)
