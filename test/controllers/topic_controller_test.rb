require 'test_helper'

class TopicControllerTest < ActionDispatch::IntegrationTest
  def setup
    create_list(:topic, 5)
  end
  
  test "should get index" do
    get topics_url
    assert_response :success
  end
  
  test "should get topic" do
    get topic_url Topic.first
    assert_response :success
  end
end
