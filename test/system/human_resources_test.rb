require "application_system_test_case"

class HumanResourcesTest < ApplicationSystemTestCase
  setup do
    @human_resource = human_resources(:one)
  end

  test "visiting the index" do
    visit human_resources_url
    assert_selector "h1", text: "Human Resources"
  end

  test "creating a Human resource" do
    visit human_resources_url
    click_on "New Human Resource"

    click_on "Create Human resource"

    assert_text "Human resource was successfully created"
    click_on "Back"
  end

  test "updating a Human resource" do
    visit human_resources_url
    click_on "Edit", match: :first

    click_on "Update Human resource"

    assert_text "Human resource was successfully updated"
    click_on "Back"
  end

  test "destroying a Human resource" do
    visit human_resources_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Human resource was successfully destroyed"
  end
end
