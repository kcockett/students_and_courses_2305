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
    describe '#log_score' do
        it 'adds scores to scores array' do
            student = Student.new({name: "Morgan", age: 21})
            student.log_score(89)
            student.log_score(78)

            expect(student.scores).to eq([89, 78])
        end
    end
    describe '#grade' do
        it 'takes average of scores' do
            student = Student.new({name: "Morgan", age: 21})
            expect(student.grade).to eq(0)

            student.log_score(89)
            student.log_score(78)
            expect(student.grade).to eq(83.5)
        end
    end
end