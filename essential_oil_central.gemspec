
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "essential_oil_central/version"

Gem::Specification.new do |spec|
  spec.name          = "essential_oil_central"
  spec.version       = EssentialOilCentral::VERSION
  spec.authors       = ["Natasha Waller"]
  spec.email         = ["nnwaller@gmail.com"]

  spec.summary       = %q{A command line tool to provide information about essential oils.}
  spec.description   = %q{A command line tool to provide a description as well as usage information about 12 essential oils based on information from the Aura Cacia website.}
  spec.homepage      = "https://github.com/NNWaller/essential_oil_central"
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
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
  spec.add_dependency "nokogiri"
  
  

end
