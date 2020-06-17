require "application_system_test_case"

class HarboursTest < ApplicationSystemTestCase
  setup do
    @harbour = harbours(:one)
    @user = users(:one)
  end

  def login
    visit login_url
    fill_in 'Email', with: @user.email 
    fill_in 'Password', with: "mypassword" 
    click_on 'Enter'
    assert_text 'colin@smith.com'
  end

  test "visiting the index" do
    login 
    visit harbours_url
    assert_selector "h1", text: "Harbours"
  end

  test "creating a Harbour" do
    login
    visit harbours_url
    click_on "New Harbour"

    fill_in "Country", with: @harbour.country
    fill_in "Lat", with: @harbour.lat
    fill_in "Long", with: @harbour.long
    fill_in "Name", with: @harbour.name
    click_on "Create Harbour"

    assert_text "Harbour was successfully created"
    click_on "Back"
  end

  test "updating a Harbour" do
    login
    visit harbours_url
    click_on "Edit", match: :first

    fill_in "Country", with: @harbour.country
    fill_in "Lat", with: @harbour.lat
    fill_in "Long", with: @harbour.long
    fill_in "Name", with: @harbour.name
    click_on "Update Harbour"

    assert_text "Harbour was successfully updated"
    click_on "Back"
  end

  test "destroying a Harbour" do
    login
    visit harbours_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Harbour was successfully destroyed"
  end
end
