require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  def setup
      @base_url = "Your Daily Yoga Pose"
  end

  test "should go to root" do
    get root_url
    assert_response :success
  end
  test "should get home" do
    get pages_home_url
    assert_response :success
    assert_select "title", "#{@base_url}"
  end

  test "should get other poses" do
    get pages_poses_url
    assert_response :success
    assert_select "title", "Other Poses | #{@base_url}"
  end

  test "should get about page" do
    get pages_about_url
    assert_response :success
    assert_select "title", "About | #{@base_url}"
  end

  test "should get forum page" do
    get pages_contact_url
    assert_response :success
    assert_select "title", "Forum | #{@base_url}"
  end
end
