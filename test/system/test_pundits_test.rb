require "application_system_test_case"

class TestPunditsTest < ApplicationSystemTestCase
  setup do
    @test_pundit = test_pundits(:one)
  end

  test "visiting the index" do
    visit test_pundits_url
    assert_selector "h1", text: "Test pundits"
  end

  test "should create test pundit" do
    visit test_pundits_url
    click_on "New test pundit"

    click_on "Create Test pundit"

    assert_text "Test pundit was successfully created"
    click_on "Back"
  end

  test "should update Test pundit" do
    visit test_pundit_url(@test_pundit)
    click_on "Edit this test pundit", match: :first

    click_on "Update Test pundit"

    assert_text "Test pundit was successfully updated"
    click_on "Back"
  end

  test "should destroy Test pundit" do
    visit test_pundit_url(@test_pundit)
    click_on "Destroy this test pundit", match: :first

    assert_text "Test pundit was successfully destroyed"
  end
end
