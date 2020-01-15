require 'test_helper'

class CnesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get cnes_new_url
    assert_response :success
  end

  test "should get create" do
    get cnes_create_url
    assert_response :success
  end

  test "should get update" do
    get cnes_update_url
    assert_response :success
  end

  test "should get edit" do
    get cnes_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get cnes_destroy_url
    assert_response :success
  end

  test "should get show" do
    get cnes_show_url
    assert_response :success
  end

  test "should get index" do
    get cnes_index_url
    assert_response :success
  end

end
