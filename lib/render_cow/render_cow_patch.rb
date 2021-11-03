require 'spongebobify'
module RenderCow
  module RenderCowPatch
    def render(options = {}, args = {})
      options[:plain] = cowspeach(options).then { RenderCow.moo(_1, character) } if character?(options)
      super
    end

    private

    def character(options = {})
      options[:cow] = options.delete(:cowsay) if options.key?(:cowsay)
      @character ||= options.detect do |key, _value|
        RenderCow.characters.find { _1 == key }
      end&.first
    end

    def character?(options)
      return unless options.is_a?(Hash)

      character(options).present?
    end

    def cowspeach(options = {})
      speach = options[character]
      character == :spongebob ? speach.spongebobify : speach
    end
  end
end
