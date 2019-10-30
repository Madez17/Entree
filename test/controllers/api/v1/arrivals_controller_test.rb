require 'test_helper'

class Api::V1::ArrivalsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get api_v1_arrivals_create_url
    assert_response :success
  end

end
