require 'test_helper'

class BlogTest < ActiveSupport::TestCase
  
  test "named scope :sort_by_recent" do
    expected = create_list(:blog, 3).reverse
    actual = Blog.sort_by_recent
    
    assert_equal expected, actual, "Blog posts not returned in decending order."
  end

end
