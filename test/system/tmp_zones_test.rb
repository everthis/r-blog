require "application_system_test_case"

class TmpZonesTest < ApplicationSystemTestCase
  setup do
    @tmp_zone = tmp_zones(:one)
  end

  test "visiting the index" do
    visit tmp_zones_url
    assert_selector "h1", text: "Tmp zones"
  end

  test "should create tmp zone" do
    visit tmp_zones_url
    click_on "New tmp zone"

    fill_in "Title", with: @tmp_zone.title
    click_on "Create Tmp zone"

    assert_text "Tmp zone was successfully created"
    click_on "Back"
  end

  test "should update Tmp zone" do
    visit tmp_zone_url(@tmp_zone)
    click_on "Edit this tmp zone", match: :first

    fill_in "Title", with: @tmp_zone.title
    click_on "Update Tmp zone"

    assert_text "Tmp zone was successfully updated"
    click_on "Back"
  end

  test "should destroy Tmp zone" do
    visit tmp_zone_url(@tmp_zone)
    click_on "Destroy this tmp zone", match: :first

    assert_text "Tmp zone was successfully destroyed"
  end
end
