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

  test "named scope :sorted_by_display_position" do
    expected = create_list(:portfolio, 10).sort_by(&:position)
    actual = Portfolio.sorted_by_display_position

    assert_equal expected, actual, "Portfolio items are not sorted in the correct display position."
  end
end