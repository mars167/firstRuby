require 'test_helper'

class MicopostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @micopost = micoposts(:one)
  end

  test "should get index" do
    get micoposts_url
    assert_response :success
  end

  test "should get new" do
    get new_micopost_url
    assert_response :success
  end

  test "should create micopost" do
    assert_difference('Micopost.count') do
      post micoposts_url, params: { micopost: { content: @micopost.content, user_id: @micopost.user_id } }
    end

    assert_redirected_to micopost_url(Micopost.last)
  end

  test "should show micopost" do
    get micopost_url(@micopost)
    assert_response :success
  end

  test "should get edit" do
    get edit_micopost_url(@micopost)
    assert_response :success
  end

  test "should update micopost" do
    patch micopost_url(@micopost), params: { micopost: { content: @micopost.content, user_id: @micopost.user_id } }
    assert_redirected_to micopost_url(@micopost)
  end

  test "should destroy micopost" do
    assert_difference('Micopost.count', -1) do
      delete micopost_url(@micopost)
    end

    assert_redirected_to micoposts_url
  end
end
