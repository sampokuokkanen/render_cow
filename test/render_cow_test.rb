require 'test_helper'

class RenderCowTest < ActiveSupport::TestCase
  test 'it has a version number' do
    assert RenderCow::VERSION
  end

  test 'it renders a cow' do
    assert Cowsay::Character::Cow.say('Hello, world!').include?('Hello, world!')
  end

  test 'it can render Spongebob' do
    assert Cowsay::Character::Spongebob.say('Hello, world!').include?('Hello, world!')
  end
end
