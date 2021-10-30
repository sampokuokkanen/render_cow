Rails.application.routes.draw do
  root 'application#cowsay'
  get '/moo', to: 'application#cow'
  mount RenderCow::Engine => '/render_cow'
end
