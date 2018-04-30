require 'test_helper'

class InstagramFeedsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get instagram_feeds_index_url
    assert_response :success
  end

end
