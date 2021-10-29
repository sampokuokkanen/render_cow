Rails.application.routes.draw do
  root 'application#cow'
  mount RenderCow::Engine => "/render_cow"
end
