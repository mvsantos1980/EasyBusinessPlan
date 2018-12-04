require "application_system_test_case"

class MarketingsTest < ApplicationSystemTestCase
  setup do
    @marketing = marketings(:one)
  end

  test "visiting the index" do
    visit marketings_url
    assert_selector "h1", text: "Marketings"
  end

  test "creating a Marketing" do
    visit marketings_url
    click_on "New Marketing"

    click_on "Create Marketing"

    assert_text "Marketing was successfully created"
    click_on "Back"
  end

  test "updating a Marketing" do
    visit marketings_url
    click_on "Edit", match: :first

    click_on "Update Marketing"

    assert_text "Marketing was successfully updated"
    click_on "Back"
  end

  test "destroying a Marketing" do
    visit marketings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Marketing was successfully destroyed"
  end
end
