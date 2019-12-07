require "application_system_test_case"

class HeadersTest < ApplicationSystemTestCase
  setup do
    @header = headers(:one)
  end

  test "visiting the index" do
    visit headers_url
    assert_selector "h1", text: "Headers"
  end

  test "creating a Header" do
    visit headers_url
    click_on "New Header"

    fill_in "Expire on", with: @header.expire_on
    fill_in "Image", with: @header.image
    fill_in "Post on", with: @header.post_on
    click_on "Create Header"

    assert_text "Header was successfully created"
    click_on "Back"
  end

  test "updating a Header" do
    visit headers_url
    click_on "Edit", match: :first

    fill_in "Expire on", with: @header.expire_on
    fill_in "Image", with: @header.image
    fill_in "Post on", with: @header.post_on
    click_on "Update Header"

    assert_text "Header was successfully updated"
    click_on "Back"
  end

  test "destroying a Header" do
    visit headers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Header was successfully destroyed"
  end
end
