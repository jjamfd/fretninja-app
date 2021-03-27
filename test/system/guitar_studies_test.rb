require "application_system_test_case"

class GuitarStudiesTest < ApplicationSystemTestCase
  setup do
    @guitar_study = guitar_studies(:one)
  end

  test "visiting the index" do
    visit guitar_studies_url
    assert_selector "h1", text: "Guitar Studies"
  end

  test "creating a Guitar study" do
    visit guitar_studies_url
    click_on "New Guitar Study"

    click_on "Create Guitar study"

    assert_text "Guitar study was successfully created"
    click_on "Back"
  end

  test "updating a Guitar study" do
    visit guitar_studies_url
    click_on "Edit", match: :first

    click_on "Update Guitar study"

    assert_text "Guitar study was successfully updated"
    click_on "Back"
  end

  test "destroying a Guitar study" do
    visit guitar_studies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Guitar study was successfully destroyed"
  end
end
