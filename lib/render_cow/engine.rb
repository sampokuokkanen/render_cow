require "render_cow/render_cow_patch"
require "cowsay"

module RenderCow
  class Engine < ::Rails::Engine
    isolate_namespace RenderCow

    ActiveSupport.on_load(:action_view) do
      ActionView::Base.prepend RenderCow::RenderCowPatch
    end
  
    ActiveSupport.on_load(:action_controller) do
      ActionController::Base.prepend RenderCow::RenderCowPatch
    end
  end
end
