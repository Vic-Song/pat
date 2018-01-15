require 'test_helper'

class SubOptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sub_option = sub_options(:one)
  end

  test "should get index" do
    get sub_options_url
    assert_response :success
  end

  test "should get new" do
    get new_sub_option_url
    assert_response :success
  end

  test "should create sub_option" do
    assert_difference('SubOption.count') do
      post sub_options_url, params: { sub_option: { question_id: @sub_option.question_id, title: @sub_option.title } }
    end

    assert_redirected_to sub_option_url(SubOption.last)
  end

  test "should show sub_option" do
    get sub_option_url(@sub_option)
    assert_response :success
  end

  test "should get edit" do
    get edit_sub_option_url(@sub_option)
    assert_response :success
  end

  test "should update sub_option" do
    patch sub_option_url(@sub_option), params: { sub_option: { question_id: @sub_option.question_id, title: @sub_option.title } }
    assert_redirected_to sub_option_url(@sub_option)
  end

  test "should destroy sub_option" do
    assert_difference('SubOption.count', -1) do
      delete sub_option_url(@sub_option)
    end

    assert_redirected_to sub_options_url
  end
end
