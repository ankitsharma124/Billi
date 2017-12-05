require 'test_helper'

class HelloworldControllerTest < ActionDispatch::IntegrationTest
  test "should get hello" do
    get helloworld_hello_url
    assert_response :success
  end

end
