module RenderCow
  module RenderCowPatch
    def render(options = {}, args = {})
      options[:plain] = cowspeach(options).then { RenderCow.moo(_1) } if cow?(options)
      super
    end

    private

    def cow?(options)
      return unless options.is_a?(Hash)

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
