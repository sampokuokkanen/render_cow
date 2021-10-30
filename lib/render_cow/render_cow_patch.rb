module RenderCow
  module RenderCowPatch
    def render(options = {}, args = {})
      options[:plain] = if cow?(options)
        cowspeach(options).then { RenderCow.moo(_1) }
      end
      super
    end

    private

    def cow?(options)
      options[:cow] || options[:cowsay]
    end

    def cowspeach(options = {})
      if options.key?(:cow)
        options[:cow]
      elsif options.key?(:cowsay)
        options[:cowsay]
      end
    end
  end
end
