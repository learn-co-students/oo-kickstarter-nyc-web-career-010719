require 'pry'
require_relative '../lib/backer.rb'


class Project

    attr_accessor :title, :backers

    def initialize(title)
      @backers = []
      @title = title
    end

    # def backers
    #   @backers #[]
    # end

    def add_backer(backer)
      @backers << backer
      backer.backed_projects << self
    end
# binding.pry

end
