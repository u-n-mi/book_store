require 'test_helper'

class BookControllerTest < ActionDispatch::IntegrationTest
  test "should get user" do
    get book_user_url
    assert_response :success
  end

  test "should get order" do
    get book_order_url
    assert_response :success
  end

end
