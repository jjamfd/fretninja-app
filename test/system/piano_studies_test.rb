require "application_system_test_case"

class PianoStudiesTest < ApplicationSystemTestCase
  setup do
    @piano_study = piano_studies(:one)
  end

  test "visiting the index" do
    visit piano_studies_url
    assert_selector "h1", text: "Piano Studies"
  end

  test "creating a Piano study" do
    visit piano_studies_url
    click_on "New Piano Study"

    click_on "Create Piano study"

    assert_text "Piano study was successfully created"
    click_on "Back"
  end

  test "updating a Piano study" do
    visit piano_studies_url
    click_on "Edit", match: :first

    click_on "Update Piano study"

    assert_text "Piano study was successfully updated"
    click_on "Back"
  end

  test "destroying a Piano study" do
    visit piano_studies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Piano study was successfully destroyed"
  end
end
