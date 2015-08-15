require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get save" do
    get :save
    assert_response :success
  end

  test "should get spend" do
    get :spend
    assert_response :success
  end

  test "should get job" do
    get :job
    assert_response :success
  end

  test "should get askforfund" do
    get :askforfund
    assert_response :success
  end

end
