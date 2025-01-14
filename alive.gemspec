require_relative "lib/alive/version"

Gem::Specification.new do |spec|
  spec.name        = "alive"
  spec.version     = Alive::VERSION
  spec.authors     = [ "Kevin Sylvestre" ]
  spec.email       = [ "kevin@ksylvest.com" ]
  spec.homepage    = "https://github.com/ksylvest/alive"
  spec.summary     = "Application monitoring for Ruby on Rails."
  spec.description = "A more complex health check for Ruby on Rails apps for services such as sidekiq / redis / etc."
  spec.license     = "MIT"
  spec.required_ruby_version = ">= 3.2.0"

  spec.metadata["rubygems_mfa_required"] = "true"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ksylvest/alive/tree/v#{Alive::VERSION}"
  spec.metadata["changelog_uri"] = "https://github.com/ksylvest/alive/releases/tag/v#{Alive::VERSION}"
  spec.metadata["documentation_uri"] = "https://alive.ksylvest.com/"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 8.0.1"
end
