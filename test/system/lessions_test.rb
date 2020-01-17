require "application_system_test_case"

class LessionsTest < ApplicationSystemTestCase
  setup do
    @lession = lessions(:one)
  end

  test "visiting the index" do
    visit lessions_url
    assert_selector "h1", text: "Lessions"
  end

  test "creating a Lession" do
    visit lessions_url
    click_on "New Lession"

    fill_in "Description", with: @lession.description
    fill_in "Keywords", with: @lession.keywords
    fill_in "Search field", with: @lession.search_field
    fill_in "Title", with: @lession.title
    click_on "Create Lession"

    assert_text "Lession was successfully created"
    click_on "Back"
  end

  test "updating a Lession" do
    visit lessions_url
    click_on "Edit", match: :first

    fill_in "Description", with: @lession.description
    fill_in "Keywords", with: @lession.keywords
    fill_in "Search field", with: @lession.search_field
    fill_in "Title", with: @lession.title
    click_on "Update Lession"

    assert_text "Lession was successfully updated"
    click_on "Back"
  end

  test "destroying a Lession" do
    visit lessions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lession was successfully destroyed"
  end
end
