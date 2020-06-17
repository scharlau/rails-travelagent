require 'test_helper'

#modified to add customer, and redirect to customer_url after update because the two are related

class AddressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @address = addresses(:one)
    @customer = customers(:one)
  end

  test "should get index" do
    get addresses_url
    assert_response :success
  end

  test "should get new" do
    get new_address_url
    assert_response :success
  end

  test "should create address" do
  
    assert_difference('Address.count', +1) do
      post addresses_url, params: { address: { city: "Dundee", customer_id: @customer.id, postcode: "DD4 4ER", street: "15 Commercial Street" } }
    end

    assert_redirected_to address_url(Address.last)
  end

  test "should show address" do
    get address_url(@address)
    assert_response :success
  end

  test "should get edit" do
    get edit_address_url(@address)
    assert_response :success
  end

  test "should update address" do
    patch address_url(@address), params: { address: { street: "19 Commercial Street" } }
    assert_redirected_to customer_url(@customer)
  end

  test "should destroy address" do
    assert_difference('Address.count', -1) do
      delete address_url(@address)
    end

    assert_redirected_to addresses_url
  end
end
