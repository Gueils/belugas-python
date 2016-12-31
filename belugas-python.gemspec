# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'belugas/python/version'

Gem::Specification.new do |spec|
  spec.name          = "belugas-python"
  spec.version       = Belugas::Python::VERSION
  spec.authors       = ["Roberto Quintanilla", "Abraham Kuri", "Cejas"]
  spec.email         = ["weare@icalialabs.com"]

  spec.summary       = %q{A Ruby CLI for python feature detection}
  spec.description   = %q{A Ruby CLI for python feature detection using awesome Belugas}
  spec.homepage      = "https://github.com/icalialabs/belugas-python"
  spec.license       = "MIT"

  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "thor", "~> 0.19"

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
