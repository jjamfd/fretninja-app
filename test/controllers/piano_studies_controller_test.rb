require "test_helper"

class PianoStudiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @piano_study = piano_studies(:one)
  end

  test "should get index" do
    get piano_studies_url
    assert_response :success
  end

  test "should get new" do
    get new_piano_study_url
    assert_response :success
  end

  test "should create piano_study" do
    assert_difference('PianoStudy.count') do
      post piano_studies_url, params: { piano_study: {  } }
    end

    assert_redirected_to piano_study_url(PianoStudy.last)
  end

  test "should show piano_study" do
    get piano_study_url(@piano_study)
    assert_response :success
  end

  test "should get edit" do
    get edit_piano_study_url(@piano_study)
    assert_response :success
  end

  test "should update piano_study" do
    patch piano_study_url(@piano_study), params: { piano_study: {  } }
    assert_redirected_to piano_study_url(@piano_study)
  end

  test "should destroy piano_study" do
    assert_difference('PianoStudy.count', -1) do
      delete piano_study_url(@piano_study)
    end

    assert_redirected_to piano_studies_url
  end
end
