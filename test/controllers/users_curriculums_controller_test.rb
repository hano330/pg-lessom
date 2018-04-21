require 'test_helper'

class UsersCurriculumsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_curriculums_index_url
    assert_response :success
  end

end
