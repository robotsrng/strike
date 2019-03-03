require 'test_helper'

class SupplierPartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @supplier_part = supplier_parts(:one)
  end

  test "should get index" do
    get supplier_parts_url
    assert_response :success
  end

  test "should get new" do
    get new_supplier_part_url
    assert_response :success
  end

  test "should create supplier_part" do
    assert_difference('SupplierPart.count') do
      post supplier_parts_url, params: { supplier_part: { category_code: @supplier_part.category_code, description: @supplier_part.description, history: @supplier_part.history, name: @supplier_part.name, part_number: @supplier_part.part_number, supplier_cost: @supplier_part.supplier_cost, supplier_id: @supplier_part.supplier_id } }
    end

    assert_redirected_to supplier_part_url(SupplierPart.last)
  end

  test "should show supplier_part" do
    get supplier_part_url(@supplier_part)
    assert_response :success
  end

  test "should get edit" do
    get edit_supplier_part_url(@supplier_part)
    assert_response :success
  end

  test "should update supplier_part" do
    patch supplier_part_url(@supplier_part), params: { supplier_part: { category_code: @supplier_part.category_code, description: @supplier_part.description, history: @supplier_part.history, name: @supplier_part.name, part_number: @supplier_part.part_number, supplier_cost: @supplier_part.supplier_cost, supplier_id: @supplier_part.supplier_id } }
    assert_redirected_to supplier_part_url(@supplier_part)
  end

  test "should destroy supplier_part" do
    assert_difference('SupplierPart.count', -1) do
      delete supplier_part_url(@supplier_part)
    end

    assert_redirected_to supplier_parts_url
  end
end
