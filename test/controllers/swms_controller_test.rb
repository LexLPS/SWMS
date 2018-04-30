require 'test_helper'

class SwmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @swm = swms(:one)
  end

  test "should get index" do
    get swms_url
    assert_response :success
  end

  test "should get new" do
    get new_swm_url
    assert_response :success
  end

  test "should create swm" do
    assert_difference('Swm.count') do
      post swms_url, params: { swm: {  } }
    end

    assert_redirected_to swm_url(Swm.last)
  end

  test "should show swm" do
    get swm_url(@swm)
    assert_response :success
  end

  test "should get edit" do
    get edit_swm_url(@swm)
    assert_response :success
  end

  test "should update swm" do
    patch swm_url(@swm), params: { swm: {  } }
    assert_redirected_to swm_url(@swm)
  end

  test "should destroy swm" do
    assert_difference('Swm.count', -1) do
      delete swm_url(@swm)
    end

    assert_redirected_to swms_url
  end
end
