require "application_system_test_case"

class CruisesTest < ApplicationSystemTestCase
  setup do
    @cruise = cruises(:one)
  end

  test "visiting the index" do
    visit cruises_url
    assert_selector "h1", text: "Cruises"
  end

  test "creating a Cruise" do
    visit cruises_url
    click_on "New Cruise"

    fill_in "Name", with: @cruise.name
    fill_in "Ship", with: @cruise.ship_id
    click_on "Create Cruise"

    assert_text "Cruise was successfully created"
    click_on "Back"
  end

  test "updating a Cruise" do
    visit cruises_url
    click_on "Edit", match: :first

    fill_in "Name", with: @cruise.name
    fill_in "Ship", with: @cruise.ship_id
    click_on "Update Cruise"

    assert_text "Cruise was successfully updated"
    click_on "Back"
  end

  test "destroying a Cruise" do
    visit cruises_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cruise was successfully destroyed"
  end
end
