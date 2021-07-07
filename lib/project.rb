require 'pry'
require_relative './backer'

class Project

  @@backers = []

  attr_accessor :title

  def initialize(title)
    @title = title
  end

  def backers
    @@backers
  end

  def add_backer(backer)
    @@backers << backer
    Backer.projects << self
    # binding.pry
  end

  def self.backers
    @@backers
  end

end # end of class Project
