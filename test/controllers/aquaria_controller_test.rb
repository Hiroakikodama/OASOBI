require 'test_helper'

class AquariaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get aquaria_index_url
    assert_response :success
  end

  test "should get new" do
    get aquaria_new_url
    assert_response :success
  end

  test "should get edit" do
    get aquaria_edit_url
    assert_response :success
  end

  test "should get show" do
    get aquaria_show_url
    assert_response :success
  end

end
