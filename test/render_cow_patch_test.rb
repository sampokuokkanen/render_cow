require 'test_helper'

class RenderCowPatchTest < ActiveSupport::TestCase
  test 'can find the character from the options hash' do
    character = Class.new.extend(RenderCow::RenderCowPatch).send('character', { spongebob: 'squarepants' })
    assert character, :spongebob
  end
end
