require 'test_helper'

class Master::CityControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get master_city_index_url
    assert_response :success
  end

  test "should get new" do
    get master_city_new_url
    assert_response :success
  end

  test "should get edit" do
    get master_city_edit_url
    assert_response :success
  end

  test "should get delete" do
    get master_city_delete_url
    assert_response :success
  end

end
