require 'test_helper'

class TimetableControllerTest < ActionController::TestCase
  test "should get tt" do
    get :tt
    assert_response :success
  end

end
