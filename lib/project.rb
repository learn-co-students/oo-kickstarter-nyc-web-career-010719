class Project
attr_accessor :backers
attr_reader :title

 def initialize(title)
   @title = title
   @backers = []
 end

 def add_backer(backer)
   @backers << backer

   #this method adds project to the total projects
   # for the backer
  
   backer.backed_projects << self
   # binding.pry
 end

end
