class ApplicationController < ActionController::Base
  def cowsay
    render(cowsay: 'Moo')
  end

  def normal; end

  def cow_partial; end

  RenderCow.characters.each do |character|
    define_method(character) do
      render(character => character.to_s.capitalize)
    end
  end
end
