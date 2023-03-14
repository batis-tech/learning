require 'rails_helper'

RSpec.describe User, type: :request do
  it 'returns all users'do
  get '/users'
  expect(response).to have_http_status(:success)
  end
  it 'should register the user'do
  params = User.new(
    user_name:"batis",
    user_email: "batis@gmail.com",
    phone_number: '0563822391'
  )
  expect(params).to be_valid
  end

end
