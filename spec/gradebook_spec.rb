require 'rspec'
require './lib/course'
require './lib/student'
require './lib/gradebook'

RSpec.describe Gradebook do 
    describe '#initialize' do
        it 'should create Gradebook with instructor' do
            gradebook = Gradebook.new
            expect(gradebook.instructor).to eq("")
            expect(gradebook.courses).to eq([])
        end
    end
    describe '#add_course' do
        it 'adds a course object to courses array' do
            gradebook = Gradebook.new
            course = Course.new("Calculus", 2)

            expect(gradebook.add_course(course)).to eq([course])
        end
    end
    describe '#list_all_students' do
        it 'lists all students in all courses in gradebook' do
            gradebook = Gradebook.new
            course1 = Course.new("Calculus", 2)
            course2 = Course.new("Ruby", 2)
            gradebook.add_course(course1)
            gradebook.add_course(course2)
            student1 = Student.new({name: "Morgan", age: 21})
            student2 = Student.new({name: "Jordan", age: 29})
            student3 = Student.new({name: "Keegan", age: 24})
            course1.enroll(student1)
            course1.enroll(student2)
            course2.enroll(student3)

            expect(gradebook.list_all_students).to eq({course1 => [student1, student2], course2 => [student3]})
        end
    end
    describe '#students_below_threshold' do
        it 'lists all students below given grade threshold' do
            gradebook = Gradebook.new
            course1 = Course.new("Calculus", 2)
            course2 = Course.new("Ruby", 2)
            gradebook.add_course(course1)
            gradebook.add_course(course2)
            student1 = Student.new({name: "Morgan", age: 21})
            student2 = Student.new({name: "Jordan", age: 29})
            student3 = Student.new({name: "Keegan", age: 24})
            course1.enroll(student1)
            course1.enroll(student2)
            course2.enroll(student3)
            student1.log_score(79)
            student1.log_score(89) # Multiple scores for student1
            student2.log_score(78)  
            student3.log_score(64)
            student3.log_score(60) # Multiple scores for student3

            expect(gradebook.students_below_threshold(70)).to eq([student3])
            expect(gradebook.students_below_threshold(80)).to eq([student2, student3])
        end
    end
    describe '#all_grades' do
        it 'returns hash showing all grades for all courses in gradebook' do
            gradebook = Gradebook.new
            course1 = Course.new("Calculus", 2)
            course2 = Course.new("Ruby", 2)
            gradebook.add_course(course1)
            gradebook.add_course(course2)
            student1 = Student.new({name: "Morgan", age: 21})
            student2 = Student.new({name: "Jordan", age: 29})
            student3 = Student.new({name: "Keegan", age: 24})
            course1.enroll(student1)
            course1.enroll(student2)
            course2.enroll(student3)
            student1.log_score(79)
            student1.log_score(89) # Multiple scores for student1
            student2.log_score(78)  
            student3.log_score(64)
            student3.log_score(60) # Multiple scores for student3
            require 'pry'; binding.pry
            expect(gradebook.all_grades.first).to have_key(course1)
        end
    end
end