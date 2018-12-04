require "application_system_test_case"

class ContextualizationsTest < ApplicationSystemTestCase
  setup do
    @contextualization = contextualizations(:one)
  end

  test "visiting the index" do
    visit contextualizations_url
    assert_selector "h1", text: "Contextualizations"
  end

  test "creating a Contextualization" do
    visit contextualizations_url
    click_on "New Contextualization"

    click_on "Create Contextualization"

    assert_text "Contextualization was successfully created"
    click_on "Back"
  end

  test "updating a Contextualization" do
    visit contextualizations_url
    click_on "Edit", match: :first

    click_on "Update Contextualization"

    assert_text "Contextualization was successfully updated"
    click_on "Back"
  end

  test "destroying a Contextualization" do
    visit contextualizations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contextualization was successfully destroyed"
  end
end
