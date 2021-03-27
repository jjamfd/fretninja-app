require "test_helper"

class TrumpetStudiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trumpet_study = trumpet_studies(:one)
  end

  test "should get index" do
    get trumpet_studies_url
    assert_response :success
  end

  test "should get new" do
    get new_trumpet_study_url
    assert_response :success
  end

  test "should create trumpet_study" do
    assert_difference('TrumpetStudy.count') do
      post trumpet_studies_url, params: { trumpet_study: {  } }
    end

    assert_redirected_to trumpet_study_url(TrumpetStudy.last)
  end

  test "should show trumpet_study" do
    get trumpet_study_url(@trumpet_study)
    assert_response :success
  end

  test "should get edit" do
    get edit_trumpet_study_url(@trumpet_study)
    assert_response :success
  end

  test "should update trumpet_study" do
    patch trumpet_study_url(@trumpet_study), params: { trumpet_study: {  } }
    assert_redirected_to trumpet_study_url(@trumpet_study)
  end

  test "should destroy trumpet_study" do
    assert_difference('TrumpetStudy.count', -1) do
      delete trumpet_study_url(@trumpet_study)
    end

    assert_redirected_to trumpet_studies_url
  end
end
