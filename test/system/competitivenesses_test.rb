require "application_system_test_case"

class CompetitivenessesTest < ApplicationSystemTestCase
  setup do
    @competitiveness = competitivenesses(:one)
  end

  test "visiting the index" do
    visit competitivenesses_url
    assert_selector "h1", text: "Competitivenesses"
  end

  test "creating a Competitiveness" do
    visit competitivenesses_url
    click_on "New Competitiveness"

    click_on "Create Competitiveness"

    assert_text "Competitiveness was successfully created"
    click_on "Back"
  end

  test "updating a Competitiveness" do
    visit competitivenesses_url
    click_on "Edit", match: :first

    click_on "Update Competitiveness"

    assert_text "Competitiveness was successfully updated"
    click_on "Back"
  end

  test "destroying a Competitiveness" do
    visit competitivenesses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Competitiveness was successfully destroyed"
  end
end
