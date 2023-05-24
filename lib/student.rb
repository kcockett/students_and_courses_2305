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
        @output = 0.0
        if @scores.size > 0
            #require 'pry'; binding.pry
            @output = (@scores.sum.to_f) / (@scores.size.to_f)
            #require 'pry'; binding.pry
        else
            #p "No scores to grade"
            0
        end
    end
end
