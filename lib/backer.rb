class Backer
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        project_array = ProjectBacker.all.select{|project| project.backer == self}
        project_array.collect{|project_b| project_b.project}
    end
end