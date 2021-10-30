Rails.application.routes.draw do
  root 'application#cowsay'
  get '/moo', to: 'application#cow'
  get '/normal', to: 'application#normal'
  get '/cow_partial', to: 'application#cow_partial'
  mount RenderCow::Engine => '/render_cow'
end
