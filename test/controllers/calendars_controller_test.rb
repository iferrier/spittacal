require 'test_helper'

class CalendarsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get calendars_new_url
    assert_response :success
  end

  test "should get create" do
    get calendars_create_url
    assert_response :success
  end

  test "should get show" do
    get calendars_show_url
    assert_response :success
  end

end
