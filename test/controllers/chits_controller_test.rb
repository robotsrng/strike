require 'test_helper'

class ChitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chit = chits(:one)
  end

  test "should get index" do
    get chits_url
    assert_response :success
  end

  test "should get new" do
    get new_chit_url
    assert_response :success
  end

  test "should create chit" do
    assert_difference('Chit.count') do
      post chits_url, params: { chit: { description: @chit.description, history: @chit.history, notes: @chit.notes, product_cost: @chit.product_cost, quantity: @chit.quantity, stock_id: @chit.stock_id, type_code: @chit.type_code } }
    end

    assert_redirected_to chit_url(Chit.last)
  end

  test "should show chit" do
    get chit_url(@chit)
    assert_response :success
  end

  test "should get edit" do
    get edit_chit_url(@chit)
    assert_response :success
  end

  test "should update chit" do
    patch chit_url(@chit), params: { chit: { description: @chit.description, history: @chit.history, notes: @chit.notes, product_cost: @chit.product_cost, quantity: @chit.quantity, stock_id: @chit.stock_id, type_code: @chit.type_code } }
    assert_redirected_to chit_url(@chit)
  end

  test "should destroy chit" do
    assert_difference('Chit.count', -1) do
      delete chit_url(@chit)
    end

    assert_redirected_to chits_url
  end
end
