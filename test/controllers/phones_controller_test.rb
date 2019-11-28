require 'test_helper'

class PhonesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get phones_new_url
    assert_response :success
  end

  test "should get create" do
    get phones_create_url
    assert_response :success
  end

  test "should get index" do
    get phones_index_url
    assert_response :success
  end

  test "should get show" do
    get phones_show_url
    assert_response :success
  end

  test "should get edit" do
    get phones_edit_url
    assert_response :success
  end

  test "should get update" do
    get phones_update_url
    assert_response :success
  end

  test "should get delete" do
    get phones_delete_url
    assert_response :success
  end

  test "should get destroy" do
    get phones_destroy_url
    assert_response :success
  end

end
