require "application_system_test_case"

class SchemesTest < ApplicationSystemTestCase
  setup do
    @scheme = schemes(:one)
  end

  test "visiting the index" do
    visit schemes_url
    assert_selector "h1", text: "Schemes"
  end

  test "should create scheme" do
    visit schemes_url
    click_on "New scheme"

    fill_in "Address", with: @scheme.address
    fill_in "Name", with: @scheme.name
    fill_in "Rating", with: @scheme.rating
    click_on "Create Scheme"

    assert_text "Scheme was successfully created"
    click_on "Back"
  end

  test "should update Scheme" do
    visit scheme_url(@scheme)
    click_on "Edit this scheme", match: :first

    fill_in "Address", with: @scheme.address
    fill_in "Name", with: @scheme.name
    fill_in "Rating", with: @scheme.rating
    click_on "Update Scheme"

    assert_text "Scheme was successfully updated"
    click_on "Back"
  end

  test "should destroy Scheme" do
    visit scheme_url(@scheme)
    click_on "Destroy this scheme", match: :first

    assert_text "Scheme was successfully destroyed"
  end
end
