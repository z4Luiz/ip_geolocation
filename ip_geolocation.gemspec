# frozen_string_literal: true

require_relative "lib/ip_geolocation/version"

Gem::Specification.new do |spec|
  spec.name          = "ip_geolocation"
  spec.version       = IpGeolocation::VERSION
  spec.authors       = ["Luiz Henrique"]
  spec.email         = ["z4Luiz1313@gmail.com"]

  spec.summary       = "Locate IP."
  spec.description   = "Don't use it for evil :)"
  spec.homepage      = "https://github.com/z4Luiz/ip_geolocation"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.6.1"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
