class ApplicationController < ActionController::Base
  def cowsay
    render(cowsay: 'Moo')
  end

  def cow
    render(cow: 'Moo')
  end

  def normal; end

  def cow_partial; end
end
