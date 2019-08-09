require "application_system_test_case"

class DecodesTest < ApplicationSystemTestCase
  setup do
    @decode = decodes(:one)
  end

  test "visiting the index" do
    visit decodes_url
    assert_selector "h1", text: "Decodes"
  end

  test "creating a Decode" do
    visit decodes_url
    click_on "New Decode"

    fill_in "Inputed encode", with: @decode.inputed_encode
    fill_in "Inputed key", with: @decode.inputed_key
    click_on "Create Decode"

    assert_text "Decode was successfully created"
    click_on "Back"
  end

  test "updating a Decode" do
    visit decodes_url
    click_on "Edit", match: :first

    fill_in "Inputed encode", with: @decode.inputed_encode
    fill_in "Inputed key", with: @decode.inputed_key
    click_on "Update Decode"

    assert_text "Decode was successfully updated"
    click_on "Back"
  end

  test "destroying a Decode" do
    visit decodes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Decode was successfully destroyed"
  end
end
