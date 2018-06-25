require 'test_helper'

class PortfolioTest < ActiveSupport::TestCase
  test "named scope :with_subtitle_ruby_on_rails" do
    create_list(:portfolio, 10)
    expected = []
    3.times do |n|
      expected << Portfolio.create!(title: "The Rails Way #{n}", subtitle: "Ruby on Rails")
    end
    actual = Portfolio.with_subtitle_ruby_on_rails

    assert_equal expected, actual, "Portfolio items with title Ruby on Rails not successfully returned."
  end
end