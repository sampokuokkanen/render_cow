require 'test_helper'

class RenderCowPatchTest < ActiveSupport::TestCase
  test 'can find the character from the options hash' do
    character = Class.new.extend(RenderCow::RenderCowPatch).send('character', { spongebob: 'squarepants' })
    assert character, :spongebob
  end

  test 'will use spongebobify for Spongebob' do
    klass = Class.new.extend(RenderCow::RenderCowPatch)
    klass.send('character', { spongebob: 'squarepants' })
    spongey = klass.send('cowspeach', { spongebob: 'squarepants' })
    assert_equal spongey, 'squarepants'.spongebobify
  end
end
