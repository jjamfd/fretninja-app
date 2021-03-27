require "application_system_test_case"

class TrumpetStudiesTest < ApplicationSystemTestCase
  setup do
    @trumpet_study = trumpet_studies(:one)
  end

  test "visiting the index" do
    visit trumpet_studies_url
    assert_selector "h1", text: "Trumpet Studies"
  end

  test "creating a Trumpet study" do
    visit trumpet_studies_url
    click_on "New Trumpet Study"

    click_on "Create Trumpet study"

    assert_text "Trumpet study was successfully created"
    click_on "Back"
  end

  test "updating a Trumpet study" do
    visit trumpet_studies_url
    click_on "Edit", match: :first

    click_on "Update Trumpet study"

    assert_text "Trumpet study was successfully updated"
    click_on "Back"
  end

  test "destroying a Trumpet study" do
    visit trumpet_studies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Trumpet study was successfully destroyed"
  end
end
