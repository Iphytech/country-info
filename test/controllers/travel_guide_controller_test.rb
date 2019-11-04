require 'test_helper'

class TravelGuideControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get travel_guide_index_url
    assert_response :success
  end

  test "should get search" do
    get travel_guide_search_url
    assert_response :success
  end

end
