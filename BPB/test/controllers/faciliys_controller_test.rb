require 'test_helper'

class FaciliysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @faciliy = faciliys(:one)
  end

  test "should get index" do
    get faciliys_url
    assert_response :success
  end

  test "should get new" do
    get new_faciliy_url
    assert_response :success
  end

  test "should create faciliy" do
    assert_difference('Faciliy.count') do
      post faciliys_url, params: { faciliy: { name: @faciliy.name } }
    end

    assert_redirected_to faciliy_url(Faciliy.last)
  end

  test "should show faciliy" do
    get faciliy_url(@faciliy)
    assert_response :success
  end

  test "should get edit" do
    get edit_faciliy_url(@faciliy)
    assert_response :success
  end

  test "should update faciliy" do
    patch faciliy_url(@faciliy), params: { faciliy: { name: @faciliy.name } }
    assert_redirected_to faciliy_url(@faciliy)
  end

  test "should destroy faciliy" do
    assert_difference('Faciliy.count', -1) do
      delete faciliy_url(@faciliy)
    end

    assert_redirected_to faciliys_url
  end
end
