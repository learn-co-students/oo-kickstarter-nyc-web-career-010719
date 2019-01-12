class Backer
  attr_accessor :backed_projects
  attr_reader :name

  @@all = []

  def self.all
    @@all
  end


  def initialize(name)
    @name = name

    @@all << self
  end

  def back_project(project)
    ProjectBacker.new(project, self)
  end

  def backed_projects
    ProjectBacker.all.select do |pb|
      pb.backer == self
    end
  end

end #end of Backer class
