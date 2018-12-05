require "application_system_test_case"

class FixedCostsTest < ApplicationSystemTestCase
  setup do
    @fixed_cost = fixed_costs(:one)
  end

  test "visiting the index" do
    visit fixed_costs_url
    assert_selector "h1", text: "Fixed Costs"
  end

  test "creating a Fixed cost" do
    visit fixed_costs_url
    click_on "New Fixed Cost"

    fill_in "Counter", with: @fixed_cost.counter
    fill_in "Light", with: @fixed_cost.light
    fill_in "Maintenance", with: @fixed_cost.maintenance
    fill_in "Officesupplies", with: @fixed_cost.officeSupplies
    fill_in "Other", with: @fixed_cost.other
    fill_in "Rental", with: @fixed_cost.rental
    fill_in "Taxes", with: @fixed_cost.taxes
    fill_in "Telephone", with: @fixed_cost.telephone
    fill_in "Vehicle", with: @fixed_cost.vehicle
    fill_in "Water", with: @fixed_cost.water
    click_on "Create Fixed cost"

    assert_text "Fixed cost was successfully created"
    click_on "Back"
  end

  test "updating a Fixed cost" do
    visit fixed_costs_url
    click_on "Edit", match: :first

    fill_in "Counter", with: @fixed_cost.counter
    fill_in "Light", with: @fixed_cost.light
    fill_in "Maintenance", with: @fixed_cost.maintenance
    fill_in "Officesupplies", with: @fixed_cost.officeSupplies
    fill_in "Other", with: @fixed_cost.other
    fill_in "Rental", with: @fixed_cost.rental
    fill_in "Taxes", with: @fixed_cost.taxes
    fill_in "Telephone", with: @fixed_cost.telephone
    fill_in "Vehicle", with: @fixed_cost.vehicle
    fill_in "Water", with: @fixed_cost.water
    click_on "Update Fixed cost"

    assert_text "Fixed cost was successfully updated"
    click_on "Back"
  end

  test "destroying a Fixed cost" do
    visit fixed_costs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fixed cost was successfully destroyed"
  end
end
