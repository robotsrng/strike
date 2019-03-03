require "application_system_test_case"

class ChitsTest < ApplicationSystemTestCase
  setup do
    @chit = chits(:one)
  end

  test "visiting the index" do
    visit chits_url
    assert_selector "h1", text: "Chits"
  end

  test "creating a Chit" do
    visit chits_url
    click_on "New Chit"

    fill_in "Description", with: @chit.description
    fill_in "History", with: @chit.history
    fill_in "Notes", with: @chit.notes
    fill_in "Product cost", with: @chit.product_cost
    fill_in "Quantity", with: @chit.quantity
    fill_in "Stock", with: @chit.stock_id
    fill_in "Type code", with: @chit.type_code
    click_on "Create Chit"

    assert_text "Chit was successfully created"
    click_on "Back"
  end

  test "updating a Chit" do
    visit chits_url
    click_on "Edit", match: :first

    fill_in "Description", with: @chit.description
    fill_in "History", with: @chit.history
    fill_in "Notes", with: @chit.notes
    fill_in "Product cost", with: @chit.product_cost
    fill_in "Quantity", with: @chit.quantity
    fill_in "Stock", with: @chit.stock_id
    fill_in "Type code", with: @chit.type_code
    click_on "Update Chit"

    assert_text "Chit was successfully updated"
    click_on "Back"
  end

  test "destroying a Chit" do
    visit chits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Chit was successfully destroyed"
  end
end
