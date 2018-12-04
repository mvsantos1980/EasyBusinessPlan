require "application_system_test_case"

class BusinessProcessesTest < ApplicationSystemTestCase
  setup do
    @business_process = business_processes(:one)
  end

  test "visiting the index" do
    visit business_processes_url
    assert_selector "h1", text: "Business Processes"
  end

  test "creating a Business process" do
    visit business_processes_url
    click_on "New Business Process"

    click_on "Create Business process"

    assert_text "Business process was successfully created"
    click_on "Back"
  end

  test "updating a Business process" do
    visit business_processes_url
    click_on "Edit", match: :first

    click_on "Update Business process"

    assert_text "Business process was successfully updated"
    click_on "Back"
  end

  test "destroying a Business process" do
    visit business_processes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Business process was successfully destroyed"
  end
end
