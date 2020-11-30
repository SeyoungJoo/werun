require 'test_helper'

class TracksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tracks_index_url
    assert_response :success
  end

  test "should get show" do
    get tracks_show_url
    assert_response :success
  end

  test "should get new" do
    get tracks_new_url
    assert_response :success
  end

  test "should get create" do
    get tracks_create_url
    assert_response :success
  end

end
