require "test_helper"

class TmpZonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tmp_zone = tmp_zones(:one)
  end

  test "should get index" do
    get tmp_zones_url
    assert_response :success
  end

  test "should get new" do
    get new_tmp_zone_url
    assert_response :success
  end

  test "should create tmp_zone" do
    assert_difference("TmpZone.count") do
      post tmp_zones_url, params: { tmp_zone: { title: @tmp_zone.title } }
    end

    assert_redirected_to tmp_zone_url(TmpZone.last)
  end

  test "should show tmp_zone" do
    get tmp_zone_url(@tmp_zone)
    assert_response :success
  end

  test "should get edit" do
    get edit_tmp_zone_url(@tmp_zone)
    assert_response :success
  end

  test "should update tmp_zone" do
    patch tmp_zone_url(@tmp_zone), params: { tmp_zone: { title: @tmp_zone.title } }
    assert_redirected_to tmp_zone_url(@tmp_zone)
  end

  test "should destroy tmp_zone" do
    assert_difference("TmpZone.count", -1) do
      delete tmp_zone_url(@tmp_zone)
    end

    assert_redirected_to tmp_zones_url
  end
end
