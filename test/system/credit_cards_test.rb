require "application_system_test_case"

class CreditCardsTest < ApplicationSystemTestCase
  setup do
    @credit_card = credit_cards(:one)
  end

  test "visiting the index" do
    visit credit_cards_url
    assert_selector "h1", text: "Credit Cards"
  end

  test "creating a Credit card" do
    visit credit_cards_url
    click_on "New Credit Card"

    fill_in "Customer", with: @credit_card.customer_id
    fill_in "Exp Date", with: @credit_card.exp_date
    fill_in "Name On Card", with: @credit_card.name_on_card
    fill_in "Number", with: @credit_card.number
    fill_in "Organisation", with: @credit_card.organisation
    click_on "Create Credit card"

    assert_text "Credit card was successfully created"
    click_on "Back"
  end

  test "updating a Credit card" do
    visit credit_cards_url
    click_on "Edit", match: :first

    fill_in "Customer", with: @credit_card.customer_id
    fill_in "Exp Date", with: @credit_card.exp_date
    fill_in "Name On Card", with: @credit_card.name_on_card
    fill_in "Number", with: @credit_card.number
    fill_in "Organisation", with: @credit_card.organisation
    click_on "Update Credit card"

    assert_text "Credit card was successfully updated"
    click_on "Back"
  end

  test "destroying a Credit card" do
    visit credit_cards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Credit card was successfully destroyed"
  end
end
