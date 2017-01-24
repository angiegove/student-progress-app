require 'rails_helper'

describe StudentsController do

  describe '#show' do
    context 'student is found ' do
      it "finds student by username" do
        student = Student.create
        get :show, params: {id: student.id}
        parsed_response = JSON.parse(response.body)
        expect(response.body).to eq(student.to_json)
      end
    end
  end

  describe '#progress' do
    context 'student is found ' do
      it "returns students progress as json " do
        student = Student.create(username: "bottle", name: 'go', surname: 'bottle')
        lesson = Lesson.create(number:1)
        part = Part.create(number:2, lesson_id: lesson.id)
        progress = Progress.create(lesson_id:lesson.id, part_id: part.id, student_id: student.id)

        get :progress, params: {id: student.id}

        expect(response.body).to include({student:"bottle",lesson:1,part:2}.to_json)

      end
    end

    context 'student is not found ' do
      it 'raises a 404' do
        expect { get '/student/notastudent/progress' }.to raise_error(ActionController::UrlGenerationError)
      end
    end
  end
end
