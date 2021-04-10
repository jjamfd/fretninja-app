require "application_system_test_case"

class IntervallicFormulasTest < ApplicationSystemTestCase
  setup do
    @intervallic_formula = intervallic_formulas(:one)
  end

  test "visiting the index" do
    visit intervallic_formulas_url
    assert_selector "h1", text: "Intervallic Formulas"
  end

  test "creating a Intervallic formula" do
    visit intervallic_formulas_url
    click_on "New Intervallic Formula"

    click_on "Create Intervallic formula"

    assert_text "Intervallic formula was successfully created"
    click_on "Back"
  end

  test "updating a Intervallic formula" do
    visit intervallic_formulas_url
    click_on "Edit", match: :first

    click_on "Update Intervallic formula"

    assert_text "Intervallic formula was successfully updated"
    click_on "Back"
  end

  test "destroying a Intervallic formula" do
    visit intervallic_formulas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Intervallic formula was successfully destroyed"
  end
end
