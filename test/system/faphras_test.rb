require "application_system_test_case"

class FaphrasTest < ApplicationSystemTestCase
  setup do
    @faphra = faphras(:one)
  end

  test "visiting the index" do
    visit faphras_url
    assert_selector "h1", text: "Faphras"
  end

  test "creating a Faphra" do
    visit faphras_url
    click_on "New Faphra"

    fill_in "Body", with: @faphra.body
    click_on "Create Faphra"

    assert_text "Faphra was successfully created"
    click_on "Back"
  end

  test "updating a Faphra" do
    visit faphras_url
    click_on "Edit", match: :first

    fill_in "Body", with: @faphra.body
    click_on "Update Faphra"

    assert_text "Faphra was successfully updated"
    click_on "Back"
  end

  test "destroying a Faphra" do
    visit faphras_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Faphra was successfully destroyed"
  end
end
