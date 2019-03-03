require "application_system_test_case"

class CustomerPortalsTest < ApplicationSystemTestCase
  setup do
    @customer_portal = customer_portals(:one)
  end

  test "visiting the index" do
    visit customer_portals_url
    assert_selector "h1", text: "Customer Portals"
  end

  test "creating a Customer portal" do
    visit customer_portals_url
    click_on "New Customer Portal"

    fill_in "Company email", with: @customer_portal.company_email
    fill_in "Company fax", with: @customer_portal.company_fax
    fill_in "Company name", with: @customer_portal.company_name
    fill_in "Company phone", with: @customer_portal.company_phone
    fill_in "Company website", with: @customer_portal.company_website
    fill_in "Stock chits", with: @customer_portal.stock_chits
    fill_in "Stock parts", with: @customer_portal.stock_parts
    fill_in "Suppliers", with: @customer_portal.suppliers
    fill_in "User", with: @customer_portal.user
    click_on "Create Customer portal"

    assert_text "Customer portal was successfully created"
    click_on "Back"
  end

  test "updating a Customer portal" do
    visit customer_portals_url
    click_on "Edit", match: :first

    fill_in "Company email", with: @customer_portal.company_email
    fill_in "Company fax", with: @customer_portal.company_fax
    fill_in "Company name", with: @customer_portal.company_name
    fill_in "Company phone", with: @customer_portal.company_phone
    fill_in "Company website", with: @customer_portal.company_website
    fill_in "Stock chits", with: @customer_portal.stock_chits
    fill_in "Stock parts", with: @customer_portal.stock_parts
    fill_in "Suppliers", with: @customer_portal.suppliers
    fill_in "User", with: @customer_portal.user
    click_on "Update Customer portal"

    assert_text "Customer portal was successfully updated"
    click_on "Back"
  end

  test "destroying a Customer portal" do
    visit customer_portals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customer portal was successfully destroyed"
  end
end
