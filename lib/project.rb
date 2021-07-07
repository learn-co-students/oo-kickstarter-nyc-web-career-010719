class Project
  attr_accessor :backers
  attr_reader :title

  @@all = []

  def self.all
    @@all
  end

  def initialize(title)
    @title = title


    @@all << self
  end

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end

  def backers
    ProjectBacker.all.select do |pb|
      pb.project == self
    end
  end

end #end of Project class
