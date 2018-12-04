require 'test_helper'

class CompetitivenessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @competitiveness = competitivenesses(:one)
  end

  test "should get index" do
    get competitivenesses_url
    assert_response :success
  end

  test "should get new" do
    get new_competitiveness_url
    assert_response :success
  end

  test "should create competitiveness" do
    assert_difference('Competitiveness.count') do
      post competitivenesses_url, params: { competitiveness: {  } }
    end

    assert_redirected_to competitiveness_url(Competitiveness.last)
  end

  test "should show competitiveness" do
    get competitiveness_url(@competitiveness)
    assert_response :success
  end

  test "should get edit" do
    get edit_competitiveness_url(@competitiveness)
    assert_response :success
  end

  test "should update competitiveness" do
    patch competitiveness_url(@competitiveness), params: { competitiveness: {  } }
    assert_redirected_to competitiveness_url(@competitiveness)
  end

  test "should destroy competitiveness" do
    assert_difference('Competitiveness.count', -1) do
      delete competitiveness_url(@competitiveness)
    end

    assert_redirected_to competitivenesses_url
  end
end
