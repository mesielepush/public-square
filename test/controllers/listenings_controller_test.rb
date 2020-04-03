require 'test_helper'

class ListeningsControllerTest < ActionDispatch::IntegrationTest
  test "should get other_id:string" do
    get listenings_other_id:string_url
    assert_response :success
  end

end
