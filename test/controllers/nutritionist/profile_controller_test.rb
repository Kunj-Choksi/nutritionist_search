require 'test_helper'

class Nutritionist::ProfileControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get nutritionist_profile_index_url
    assert_response :success
  end

  test "should get new" do
    get nutritionist_profile_new_url
    assert_response :success
  end

  test "should get edit" do
    get nutritionist_profile_edit_url
    assert_response :success
  end

  test "should get delete" do
    get nutritionist_profile_delete_url
    assert_response :success
  end

  test "should get show" do
    get nutritionist_profile_show_url
    assert_response :success
  end

end
