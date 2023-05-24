require 'rspec'
require './lib/student'

RSpec.describe Student do
    describe '#initialize' do
        it 'creates an instance of Student with two parameters and default @scores' do
            student = Student.new({name: "Morgan", age: 21})

            expect(student.name).to eq("Morgan")
            expect(student.age).to eq(21)
            expect(student.scores).to eq([])
        end
    end
end