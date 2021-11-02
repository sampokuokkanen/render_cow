require 'render_cow/version'
require 'render_cow/engine'
require 'render_cow/spongebob'
module RenderCow
  class << self
    def characters
      @characters ||= Cowsay::Character.constants.map(&:downcase).map(&:to_sym).excluding(:base)
    end

    def moo(mooo, character = :cow)
      Cowsay::Character.const_get(character.to_s.capitalize).say(mooo)
    end
  end
end
