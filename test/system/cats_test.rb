require "application_system_test_case"

class CatsTest < ApplicationSystemTestCase
  setup do
    @cat = cats(:one)
  end

  test "visiting the index" do
    visit cats_url
    assert_selector "h1", text: "Cats"
  end

  test "creating a Cat" do
    visit cats_url
    click_on "New Cat"

    fill_in "Name", with: @cat.name
    click_on "Create Cat"

    assert_text "Cat was successfully created"
    click_on "Back"
  end

  test "updating a Cat" do
    visit cats_url
    click_on "Edit", match: :first

    fill_in "Name", with: @cat.name
    click_on "Update Cat"

    assert_text "Cat was successfully updated"
    click_on "Back"
  end

  test "destroying a Cat" do
    visit cats_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cat was successfully destroyed"
  end
end
