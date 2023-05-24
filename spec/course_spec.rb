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
end