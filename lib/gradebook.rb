class Gradebook
    attr_reader :instructor, :courses

    def initialize
        @instructor = ""
        @courses = []
    end

    def add_course(course)
        @courses << course
    end
end
