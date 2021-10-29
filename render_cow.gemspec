require_relative "lib/render_cow/version"

Gem::Specification.new do |spec|
  spec.name        = "render_cow"
  spec.version     = RenderCow::VERSION
  spec.authors     = ["Sampo Kuokkanen"]
  spec.email       = ["sampo.kuokkanen@gmail.com"]
  spec.homepage    = 'https://github.com/sampokuokkanen/rails_material_design_icons'
  spec.summary     = "RenderCow allows you to render cows."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = 'https://github.com/sampokuokkanen/rails_material_design_icons'
  spec.metadata["changelog_uri"] = 'https://github.com/sampokuokkanen/rails_material_design_icons'

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.1.4"
  spec.add_dependency "cowsay"
  spec.add_development_dependency "byebug"
  spec.add_development_dependency "rubocop"
end
