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
end