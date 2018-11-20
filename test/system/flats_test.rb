require "application_system_test_case"

class FlatsTest < ApplicationSystemTestCase
  test "visiting the flats page" do
    visit flats_url

    assert_selector "h1", text: "Flats"
  end
end
