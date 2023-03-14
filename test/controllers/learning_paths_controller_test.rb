require "test_helper"

class LearningPathsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @learning_path = learning_paths(:one)
  end

  test "should get index" do
    get learning_paths_url, as: :json
    assert_response :success
  end

  test "should create learning_path" do
    assert_difference('LearningPath.count') do
      post learning_paths_url, params: { learning_path: { path_description: @learning_path.path_description, path_name: @learning_path.path_name } }, as: :json
    end

    assert_response 201
  end

  test "should show learning_path" do
    get learning_path_url(@learning_path), as: :json
    assert_response :success
  end

  test "should update learning_path" do
    patch learning_path_url(@learning_path), params: { learning_path: { path_description: @learning_path.path_description, path_name: @learning_path.path_name } }, as: :json
    assert_response 200
  end

  test "should destroy learning_path" do
    assert_difference('LearningPath.count', -1) do
      delete learning_path_url(@learning_path), as: :json
    end

    assert_response 204
  end
end
