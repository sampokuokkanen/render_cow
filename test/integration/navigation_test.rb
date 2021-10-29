require "test_helper"

class NavigationTest < ActionDispatch::IntegrationTest
  test "access cow path" do
    get "/"
    assert_response :success
    assert_equal response.body, Cowsay::Character::Cow.say("Moo") 
  end
end
