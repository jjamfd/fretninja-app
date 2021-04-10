require "test_helper"

class IntervallicFormulasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @intervallic_formula = intervallic_formulas(:one)
  end

  test "should get index" do
    get intervallic_formulas_url
    assert_response :success
  end

  test "should get new" do
    get new_intervallic_formula_url
    assert_response :success
  end

  test "should create intervallic_formula" do
    assert_difference('IntervallicFormula.count') do
      post intervallic_formulas_url, params: { intervallic_formula: {  } }
    end

    assert_redirected_to intervallic_formula_url(IntervallicFormula.last)
  end

  test "should show intervallic_formula" do
    get intervallic_formula_url(@intervallic_formula)
    assert_response :success
  end

  test "should get edit" do
    get edit_intervallic_formula_url(@intervallic_formula)
    assert_response :success
  end

  test "should update intervallic_formula" do
    patch intervallic_formula_url(@intervallic_formula), params: { intervallic_formula: {  } }
    assert_redirected_to intervallic_formula_url(@intervallic_formula)
  end

  test "should destroy intervallic_formula" do
    assert_difference('IntervallicFormula.count', -1) do
      delete intervallic_formula_url(@intervallic_formula)
    end

    assert_redirected_to intervallic_formulas_url
  end
end
