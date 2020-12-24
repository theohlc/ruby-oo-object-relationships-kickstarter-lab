class Project
    attr_accessor :title

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        project_array = ProjectBacker.all.select{|project| project.project == self}
        project_array.collect{|project_b| project_b.backer}
    end

end