require "test_helper"

class GuitarStudiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @guitar_study = guitar_studies(:one)
  end

  test "should get index" do
    get guitar_studies_url
    assert_response :success
  end

  test "should get new" do
    get new_guitar_study_url
    assert_response :success
  end

  test "should create guitar_study" do
    assert_difference('GuitarStudy.count') do
      post guitar_studies_url, params: { guitar_study: {  } }
    end

    assert_redirected_to guitar_study_url(GuitarStudy.last)
  end

  test "should show guitar_study" do
    get guitar_study_url(@guitar_study)
    assert_response :success
  end

  test "should get edit" do
    get edit_guitar_study_url(@guitar_study)
    assert_response :success
  end

  test "should update guitar_study" do
    patch guitar_study_url(@guitar_study), params: { guitar_study: {  } }
    assert_redirected_to guitar_study_url(@guitar_study)
  end

  test "should destroy guitar_study" do
    assert_difference('GuitarStudy.count', -1) do
      delete guitar_study_url(@guitar_study)
    end

    assert_redirected_to guitar_studies_url
  end
end
