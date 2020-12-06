class Project
    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        proj_back_inst = ProjectBacker.all.select { |pbi| pbi.project == self}
        proj_back_inst.map { |project| project.backer }
    end

end