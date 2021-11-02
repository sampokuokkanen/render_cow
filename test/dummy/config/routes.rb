Rails.application.routes.draw do
  root 'application#cowsay'
  get '/normal', to: 'application#normal'
  get '/cow_partial', to: 'application#cow_partial'
  get '/spongebob', to: 'application#spongebob'

  RenderCow.characters.each do |character|
    get "/#{character}", to: "application##{character}"
  end
  mount RenderCow::Engine => '/render_cow'
end
