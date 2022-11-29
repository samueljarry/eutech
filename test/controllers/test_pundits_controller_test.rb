require "test_helper"

class TestPunditsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @test_pundit = test_pundits(:one)
  end

  test "should get index" do
    get test_pundits_url
    assert_response :success
  end

  test "should get new" do
    get new_test_pundit_url
    assert_response :success
  end

  test "should create test_pundit" do
    assert_difference("TestPundit.count") do
      post test_pundits_url, params: { test_pundit: {  } }
    end

    assert_redirected_to test_pundit_url(TestPundit.last)
  end

  test "should show test_pundit" do
    get test_pundit_url(@test_pundit)
    assert_response :success
  end

  test "should get edit" do
    get edit_test_pundit_url(@test_pundit)
    assert_response :success
  end

  test "should update test_pundit" do
    patch test_pundit_url(@test_pundit), params: { test_pundit: {  } }
    assert_redirected_to test_pundit_url(@test_pundit)
  end

  test "should destroy test_pundit" do
    assert_difference("TestPundit.count", -1) do
      delete test_pundit_url(@test_pundit)
    end

    assert_redirected_to test_pundits_url
  end
end
