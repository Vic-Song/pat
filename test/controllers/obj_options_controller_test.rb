require 'test_helper'

class ObjOptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @obj_option = obj_options(:one)
  end

  test "should get index" do
    get obj_options_url
    assert_response :success
  end

  test "should get new" do
    get new_obj_option_url
    assert_response :success
  end

  test "should create obj_option" do
    assert_difference('ObjOption.count') do
      post obj_options_url, params: { obj_option: { question_id: @obj_option.question_id, title: @obj_option.title } }
    end

    assert_redirected_to obj_option_url(ObjOption.last)
  end

  test "should show obj_option" do
    get obj_option_url(@obj_option)
    assert_response :success
  end

  test "should get edit" do
    get edit_obj_option_url(@obj_option)
    assert_response :success
  end

  test "should update obj_option" do
    patch obj_option_url(@obj_option), params: { obj_option: { question_id: @obj_option.question_id, title: @obj_option.title } }
    assert_redirected_to obj_option_url(@obj_option)
  end

  test "should destroy obj_option" do
    assert_difference('ObjOption.count', -1) do
      delete obj_option_url(@obj_option)
    end

    assert_redirected_to obj_options_url
  end
end
