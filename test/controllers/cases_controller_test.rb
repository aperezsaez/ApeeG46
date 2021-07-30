require 'test_helper'

class CasesControllerTest < ActionDispatch::IntegrationTest
  test "should get by_date" do
    get cases_by_date_url
    assert_response :success
  end

end
