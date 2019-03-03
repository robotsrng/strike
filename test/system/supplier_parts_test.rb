require "application_system_test_case"

class SupplierPartsTest < ApplicationSystemTestCase
  setup do
    @supplier_part = supplier_parts(:one)
  end

  test "visiting the index" do
    visit supplier_parts_url
    assert_selector "h1", text: "Supplier Parts"
  end

  test "creating a Supplier part" do
    visit supplier_parts_url
    click_on "New Supplier Part"

    fill_in "Category code", with: @supplier_part.category_code
    fill_in "Description", with: @supplier_part.description
    fill_in "History", with: @supplier_part.history
    fill_in "Name", with: @supplier_part.name
    fill_in "Part number", with: @supplier_part.part_number
    fill_in "Supplier cost", with: @supplier_part.supplier_cost
    fill_in "Supplier", with: @supplier_part.supplier_id
    click_on "Create Supplier part"

    assert_text "Supplier part was successfully created"
    click_on "Back"
  end

  test "updating a Supplier part" do
    visit supplier_parts_url
    click_on "Edit", match: :first

    fill_in "Category code", with: @supplier_part.category_code
    fill_in "Description", with: @supplier_part.description
    fill_in "History", with: @supplier_part.history
    fill_in "Name", with: @supplier_part.name
    fill_in "Part number", with: @supplier_part.part_number
    fill_in "Supplier cost", with: @supplier_part.supplier_cost
    fill_in "Supplier", with: @supplier_part.supplier_id
    click_on "Update Supplier part"

    assert_text "Supplier part was successfully updated"
    click_on "Back"
  end

  test "destroying a Supplier part" do
    visit supplier_parts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Supplier part was successfully destroyed"
  end
end
