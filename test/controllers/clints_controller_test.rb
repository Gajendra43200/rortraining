require "test_helper"

class ClintsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get clints_new_url
    assert_response :success
  end
end
