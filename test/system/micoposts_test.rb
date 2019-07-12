require "application_system_test_case"

class MicopostsTest < ApplicationSystemTestCase
  setup do
    @micopost = micoposts(:one)
  end

  test "visiting the index" do
    visit micoposts_url
    assert_selector "h1", text: "Micoposts"
  end

  test "creating a Micopost" do
    visit micoposts_url
    click_on "New Micopost"

    fill_in "Content", with: @micopost.content
    fill_in "User", with: @micopost.user_id
    click_on "Create Micopost"

    assert_text "Micopost was successfully created"
    click_on "Back"
  end

  test "updating a Micopost" do
    visit micoposts_url
    click_on "Edit", match: :first

    fill_in "Content", with: @micopost.content
    fill_in "User", with: @micopost.user_id
    click_on "Update Micopost"

    assert_text "Micopost was successfully updated"
    click_on "Back"
  end

  test "destroying a Micopost" do
    visit micoposts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Micopost was successfully destroyed"
  end
end
