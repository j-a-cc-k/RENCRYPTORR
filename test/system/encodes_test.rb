require "application_system_test_case"

class EncodesTest < ApplicationSystemTestCase
  setup do
    @encode = encodes(:one)
  end

  test "visiting the index" do
    visit encodes_url
    assert_selector "h1", text: "Encodes"
  end

  test "creating a Encode" do
    visit encodes_url
    click_on "New Encode"

    fill_in "Generated key", with: @encode.generated_key
    fill_in "Plain message", with: @encode.plain_message
    click_on "Create Encode"

    assert_text "Encode was successfully created"
    click_on "Back"
  end

  test "updating a Encode" do
    visit encodes_url
    click_on "Edit", match: :first

    fill_in "Generated key", with: @encode.generated_key
    fill_in "Plain message", with: @encode.plain_message
    click_on "Update Encode"

    assert_text "Encode was successfully updated"
    click_on "Back"
  end

  test "destroying a Encode" do
    visit encodes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Encode was successfully destroyed"
  end
end
