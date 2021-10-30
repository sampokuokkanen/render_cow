require 'render_cow/version'
require 'render_cow/engine'

module RenderCow
  def self.moo(mooo)
    Cowsay::Character::Cow.say(mooo)
  end
end
