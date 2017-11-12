require 'test_helper'

class UserkeysControllerTest < ActionDispatch::IntegrationTest
  test "should get fetch" do
    get userkeys_fetch_url
    assert_response :success
  end

end
