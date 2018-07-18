require 'test_helper'

class Master::SpecialityControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get master_speciality_index_url
    assert_response :success
  end

  test "should get new" do
    get master_speciality_new_url
    assert_response :success
  end

  test "should get edit" do
    get master_speciality_edit_url
    assert_response :success
  end

  test "should get delete" do
    get master_speciality_delete_url
    assert_response :success
  end

end
