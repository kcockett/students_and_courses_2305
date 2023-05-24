class Gradebook
    attr_reader :instructor, :courses

    def initialize
        @instructor = ""
        @courses = []
    end

    def add_course(course)
        @courses << course
    end

    def list_all_students
        output = {}
        @courses.each do |course|
            output[course] = course.students
        end
        output
    end

    def students_below_threshold(threshold)
        output = []
    end
end
