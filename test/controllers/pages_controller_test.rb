require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get gear" do
    get :gear
    assert_response :success
  end

  test "should get ebook" do
    get :ebook
    assert_response :success
  end

end
