class Student
    attr_reader :name, :age, :scores
    
    def initialize(student_data)
        @name = student_data[:name]
        @age = student_data[:age]
        @scores = []
    end

    def log_score(score)
        @scores << score
    end

    def grade
        if @scores.size > 0
            output = (@scores.sum.to_f) / (@scores.size.to_f)
        else
            #p "No scores to grade"
            0
        end
    end
end
