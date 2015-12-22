# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bib/version'

Gem::Specification.new do |spec|
  spec.name          = "bib"
  spec.version       = Bib::VERSION
  spec.authors       = ["alu0100753653"]
  spec.email         = ["alu0100753653@ull.edu.es"]

  spec.summary       = %q{Gema DSL}
  spec.description   = %q{Bibliografia como DSL}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 2.11"
  spec.add_development_dependency "guard"
	spec.add_development_dependency "guard-rspec"
	spec.add_development_dependency "guard-bundler"
	spec.add_development_dependency "coveralls"
end
