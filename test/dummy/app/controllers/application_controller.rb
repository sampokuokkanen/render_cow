class ApplicationController < ActionController::Base
  def cow
    render cowsay: 'Moo'
  end
end
