require 'test_helper'

class RequestLogControllerTest < ActionDispatch::IntegrationTest
  test "should get viewlog" do
    get request_log_viewlog_url
    assert_response :success
  end

end
