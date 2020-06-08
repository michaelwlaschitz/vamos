require 'test_helper'

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  # test "the truth" do
  #   assert true
  # end

  # setup do
  #   get '/users/sign_in'
  #   sign_in users (:user_001)
  #   post user_session_url
  # end

  test "should get index" do
    get projects_url
    assert_response :success
  end

end
