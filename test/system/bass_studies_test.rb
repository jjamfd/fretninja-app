require "application_system_test_case"

class BassStudiesTest < ApplicationSystemTestCase
  setup do
    @bass_study = bass_studies(:one)
  end

  test "visiting the index" do
    visit bass_studies_url
    assert_selector "h1", text: "Bass Studies"
  end

  test "creating a Bass study" do
    visit bass_studies_url
    click_on "New Bass Study"

    click_on "Create Bass study"

    assert_text "Bass study was successfully created"
    click_on "Back"
  end

  test "updating a Bass study" do
    visit bass_studies_url
    click_on "Edit", match: :first

    click_on "Update Bass study"

    assert_text "Bass study was successfully updated"
    click_on "Back"
  end

  test "destroying a Bass study" do
    visit bass_studies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Bass study was successfully destroyed"
  end
end
