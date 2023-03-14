require 'rails_helper'

RSpec.describe Course, type: :request do
  it 'returns all tests' do
    get '/courses'
    expect(response).to have_http_status(:success)
    end
  
    it 'should create a course'do
    user = User.new(
    id: 1,
    user_name:"batis",
    user_email: "batis@gmail.com",
    phone_number: '0563822391'
  )
    user.add_role :author
    params = Course.new(
       course_name:"ruby",
       course_description: "ruby on rails",
       learning_path_id: 1 ,
       user_id: user.id
    )
    expect(params).to be_valid
    end
end
