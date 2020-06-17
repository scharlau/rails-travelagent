require 'test_helper'

class HarboursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @harbour = harbours(:one)
  end

  test "should get index" do
    get harbours_url
    assert_response :success
  end

  test "should get new" do
    get new_harbour_url
    assert_response :success
  end

  test "should create harbour" do
    assert_difference('Harbour.count', +1) do
      post harbours_url, params: { harbour: { country: "sweden", lat: 7.456, long: 58.456, name: "Stockholm" } }
    end

    assert_redirected_to harbour_url(Harbour.last)
  end

  test "should show harbour" do
    get harbour_url(@harbour)
    assert_response :success
  end

  test "should get edit" do
    get edit_harbour_url(@harbour)
    assert_response :success
  end

  test "should update harbour" do
    patch harbour_url(@harbour), params: { harbour: { country: "Scotland"} }
    assert_redirected_to harbour_url(@harbour)
  end

  test "should destroy harbour" do
    assert_difference('Harbour.count', -1) do
      delete harbour_url(@harbour)
    end

    assert_redirected_to harbours_url
  end
end
