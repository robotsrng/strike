require "application_system_test_case"

class StocksTest < ApplicationSystemTestCase
  setup do
    @stock = stocks(:one)
  end

  test "visiting the index" do
    visit stocks_url
    assert_selector "h1", text: "Stocks"
  end

  test "creating a Stock" do
    visit stocks_url
    click_on "New Stock"

    fill_in "Category code", with: @stock.category_code
    fill_in "Chits", with: @stock.chits
    fill_in "Contract price", with: @stock.contract_price
    fill_in "Customer portal", with: @stock.customer_portal_id
    fill_in "Description", with: @stock.description
    fill_in "Maximum qty", with: @stock.maximum_qty
    fill_in "Minimum qty", with: @stock.minimum_qty
    fill_in "Name", with: @stock.name
    fill_in "Notes", with: @stock.notes
    fill_in "Part number", with: @stock.part_number
    fill_in "Restock to level", with: @stock.restock_to_level
    fill_in "Stock links", with: @stock.stock_links
    fill_in "Supplier cost", with: @stock.supplier_cost
    fill_in "User history", with: @stock.user_history
    click_on "Create Stock"

    assert_text "Stock was successfully created"
    click_on "Back"
  end

  test "updating a Stock" do
    visit stocks_url
    click_on "Edit", match: :first

    fill_in "Category code", with: @stock.category_code
    fill_in "Chits", with: @stock.chits
    fill_in "Contract price", with: @stock.contract_price
    fill_in "Customer portal", with: @stock.customer_portal_id
    fill_in "Description", with: @stock.description
    fill_in "Maximum qty", with: @stock.maximum_qty
    fill_in "Minimum qty", with: @stock.minimum_qty
    fill_in "Name", with: @stock.name
    fill_in "Notes", with: @stock.notes
    fill_in "Part number", with: @stock.part_number
    fill_in "Restock to level", with: @stock.restock_to_level
    fill_in "Stock links", with: @stock.stock_links
    fill_in "Supplier cost", with: @stock.supplier_cost
    fill_in "User history", with: @stock.user_history
    click_on "Update Stock"

    assert_text "Stock was successfully updated"
    click_on "Back"
  end

  test "destroying a Stock" do
    visit stocks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Stock was successfully destroyed"
  end
end
