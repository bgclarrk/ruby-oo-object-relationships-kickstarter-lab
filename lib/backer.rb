class Backer
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        proj_back_inst = ProjectBacker.all.select { |pbi| pbi.backer == self}
        proj_back_inst.map { |backer| backer.project }
    end

end