require 'pry'

class Project

  attr_accessor :backers, :title

  def initialize(title)
    @title = title
    @backers = []
  end # end of initialize

  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
  end

  # def back_project(backer)
  #   self.backed_projects << backer
  # end

end #end of class
