require 'test_helper'

class ContextualizationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contextualization = contextualizations(:one)
  end

  test "should get index" do
    get contextualizations_url
    assert_response :success
  end

  test "should get new" do
    get new_contextualization_url
    assert_response :success
  end

  test "should create contextualization" do
    assert_difference('Contextualization.count') do
      post contextualizations_url, params: { contextualization: {  } }
    end

    assert_redirected_to contextualization_url(Contextualization.last)
  end

  test "should show contextualization" do
    get contextualization_url(@contextualization)
    assert_response :success
  end

  test "should get edit" do
    get edit_contextualization_url(@contextualization)
    assert_response :success
  end

  test "should update contextualization" do
    patch contextualization_url(@contextualization), params: { contextualization: {  } }
    assert_redirected_to contextualization_url(@contextualization)
  end

  test "should destroy contextualization" do
    assert_difference('Contextualization.count', -1) do
      delete contextualization_url(@contextualization)
    end

    assert_redirected_to contextualizations_url
  end
end
