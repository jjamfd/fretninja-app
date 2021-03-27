require "test_helper"

class BassStudiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bass_study = bass_studies(:one)
  end

  test "should get index" do
    get bass_studies_url
    assert_response :success
  end

  test "should get new" do
    get new_bass_study_url
    assert_response :success
  end

  test "should create bass_study" do
    assert_difference('BassStudy.count') do
      post bass_studies_url, params: { bass_study: {  } }
    end

    assert_redirected_to bass_study_url(BassStudy.last)
  end

  test "should show bass_study" do
    get bass_study_url(@bass_study)
    assert_response :success
  end

  test "should get edit" do
    get edit_bass_study_url(@bass_study)
    assert_response :success
  end

  test "should update bass_study" do
    patch bass_study_url(@bass_study), params: { bass_study: {  } }
    assert_redirected_to bass_study_url(@bass_study)
  end

  test "should destroy bass_study" do
    assert_difference('BassStudy.count', -1) do
      delete bass_study_url(@bass_study)
    end

    assert_redirected_to bass_studies_url
  end
end
