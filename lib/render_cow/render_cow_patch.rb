module RenderCow
  module RenderCowPatch
    def render(options = {}, args = {})
      if options.key?(:cowsay)
        options[:plain] = cowsay(options[:cowsay])
      end
      super
    end

    private

    def cowsay(text)
      Cowsay::Character::Cow.say(text)
    end
  end
end