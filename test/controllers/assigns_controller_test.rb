require "test_helper"

class AssignsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assign = assigns(:one)
  end

  test "should get index" do
    get assigns_url, as: :json
    assert_response :success
  end

  test "should create assign" do
    assert_difference('Assign.count') do
      post assigns_url, params: { assign: { completed: @assign.completed, course_id: @assign.course_id, user_id: @assign.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show assign" do
    get assign_url(@assign), as: :json
    assert_response :success
  end

  test "should update assign" do
    patch assign_url(@assign), params: { assign: { completed: @assign.completed, course_id: @assign.course_id, user_id: @assign.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy assign" do
    assert_difference('Assign.count', -1) do
      delete assign_url(@assign), as: :json
    end

    assert_response 204
  end
end
