require 'test_helper'

class TopicControllerTest < ActionDispatch::IntegrationTest
  test "should get topic" do
    create_list(:topic, 5)
    get topic_url Topic.first
    assert_response :success
  end
end
