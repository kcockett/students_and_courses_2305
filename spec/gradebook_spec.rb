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
end