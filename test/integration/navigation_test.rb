require 'test_helper'

class NavigationTest < ActionDispatch::IntegrationTest
  def default_moo
    RenderCow.moo('Moo')
  end

  # test 'access cow path' do
  #   get '/'
  #   assert_response :success
  #   assert_equal response.body, default_moo
  # end

  # test 'can also just use cow:' do
  #   get '/moo'
  #   assert_response :success
  #   assert_equal response.body, default_moo
  # end

  test 'can render normal views' do
    get '/normal'
    assert_includes response.body, 'Hello'
  end
end
