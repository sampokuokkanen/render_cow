require 'test_helper'

class NavigationTest < ActionDispatch::IntegrationTest
  def default_moo
    RenderCow.moo('Moo')
  end

  test 'access cow path' do
    get '/'
    assert_response :success
    assert_equal response.body, default_moo
  end

  test 'can render normal views' do
    get '/normal'
    assert_includes response.body, 'Hello'
  end

  test 'can render a file' do
    get '/render_file'
    assert_response :success
  end

  test 'can render in views' do
    get '/cow_partial'
    assert_includes response.body, 'cowsay'
  end

  test 'can render Spongebob' do
    get '/spongebob'
    assert_includes response.body, 'Spongebob'
  end

  RenderCow.characters.each do |character|
    test "can render #{character}" do
      get "/#{character}"
      assert_includes response.body, character.to_s.capitalize
    end
  end
end
