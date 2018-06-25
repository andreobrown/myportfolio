require 'test_helper'

class PortfolioControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get portfolios_url
    assert_response :success
  end
end
