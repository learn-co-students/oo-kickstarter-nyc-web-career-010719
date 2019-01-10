class Project
  attr_accessor :title, :backer

  @@backer = []

  def initialize(title)
    @title = title
  end

  def add_backer(backer)
    @@backer << backer
    backer.backed_projects << self
  end

  def backers
    @@backer
  end
end #end of class
