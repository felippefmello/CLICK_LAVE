require 'test_helper'

class LaundriesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get laundries_new_url
    assert_response :success
  end

  test "should get edit" do
    get laundries_edit_url
    assert_response :success
  end

  test "should get index" do
    get laundries_index_url
    assert_response :success
  end

  test "should get show" do
    get laundries_show_url
    assert_response :success
  end

end
