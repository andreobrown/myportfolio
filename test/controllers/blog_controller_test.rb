require 'test_helper'

class BlogControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get blogs_url
    assert_response :success
  end
end
