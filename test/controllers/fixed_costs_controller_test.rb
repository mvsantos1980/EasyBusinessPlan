require 'test_helper'

class FixedCostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fixed_cost = fixed_costs(:one)
  end

  test "should get index" do
    get fixed_costs_url
    assert_response :success
  end

  test "should get new" do
    get new_fixed_cost_url
    assert_response :success
  end

  test "should create fixed_cost" do
    assert_difference('FixedCost.count') do
      post fixed_costs_url, params: { fixed_cost: { counter: @fixed_cost.counter, light: @fixed_cost.light, maintenance: @fixed_cost.maintenance, officeSupplies: @fixed_cost.officeSupplies, other: @fixed_cost.other, rental: @fixed_cost.rental, taxes: @fixed_cost.taxes, telephone: @fixed_cost.telephone, vehicle: @fixed_cost.vehicle, water: @fixed_cost.water } }
    end

    assert_redirected_to fixed_cost_url(FixedCost.last)
  end

  test "should show fixed_cost" do
    get fixed_cost_url(@fixed_cost)
    assert_response :success
  end

  test "should get edit" do
    get edit_fixed_cost_url(@fixed_cost)
    assert_response :success
  end

  test "should update fixed_cost" do
    patch fixed_cost_url(@fixed_cost), params: { fixed_cost: { counter: @fixed_cost.counter, light: @fixed_cost.light, maintenance: @fixed_cost.maintenance, officeSupplies: @fixed_cost.officeSupplies, other: @fixed_cost.other, rental: @fixed_cost.rental, taxes: @fixed_cost.taxes, telephone: @fixed_cost.telephone, vehicle: @fixed_cost.vehicle, water: @fixed_cost.water } }
    assert_redirected_to fixed_cost_url(@fixed_cost)
  end

  test "should destroy fixed_cost" do
    assert_difference('FixedCost.count', -1) do
      delete fixed_cost_url(@fixed_cost)
    end

    assert_redirected_to fixed_costs_url
  end
end
