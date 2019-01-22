
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "Nabeel_gem/version"

Gem::Specification.new do |spec|
  spec.name          = "Nabeel_gem"
  spec.version       = NabeelGem::VERSION
  spec.authors       = ["NabeelMustafa"]
  spec.email         = ["bitf14m016@pucit.edu.pk"]

  spec.summary       = %q{Various method added to this gem using in my app.}
  spec.description   = %q{Add copy wright basic syntax in footer}
  spec.homepage      = "https://nabeelmustafa.me"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
