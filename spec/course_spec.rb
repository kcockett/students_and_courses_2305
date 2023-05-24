require 'rspec'
require './lib/course'
require './lib/student'

RSpec.describe Course do 
    describe '#initialize' do
        it 'should create Course with name, capacity, and empty array of students' do
            course = Course.new("Calculus", 2)

            expect(course.name).to eq("Calculus")
            expect(course.capacity).to eq(2)
            expect(course.students).to eq([])
        end
    end
    describe '#full?' do
        it 'check if the number of students is equal to capacity' do
            course = Course.new("Calculus", 2)
            expect(course.full?).to eq(false)
        end
    end
    describe '#enroll to add students to a course' do
        
    end
end