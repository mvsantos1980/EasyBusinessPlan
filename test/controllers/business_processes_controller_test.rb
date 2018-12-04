require 'test_helper'

class BusinessProcessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @business_process = business_processes(:one)
  end

  test "should get index" do
    get business_processes_url
    assert_response :success
  end

  test "should get new" do
    get new_business_process_url
    assert_response :success
  end

  test "should create business_process" do
    assert_difference('BusinessProcess.count') do
      post business_processes_url, params: { business_process: {  } }
    end

    assert_redirected_to business_process_url(BusinessProcess.last)
  end

  test "should show business_process" do
    get business_process_url(@business_process)
    assert_response :success
  end

  test "should get edit" do
    get edit_business_process_url(@business_process)
    assert_response :success
  end

  test "should update business_process" do
    patch business_process_url(@business_process), params: { business_process: {  } }
    assert_redirected_to business_process_url(@business_process)
  end

  test "should destroy business_process" do
    assert_difference('BusinessProcess.count', -1) do
      delete business_process_url(@business_process)
    end

    assert_redirected_to business_processes_url
  end
end
