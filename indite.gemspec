# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'indite/version'

Gem::Specification.new do |spec|
  spec.name          = "indite"
  spec.version       = Indite::VERSION
  spec.authors       = ["Bryan Lim"]
  spec.email         = ["ytbryan@gmail.com"]

  spec.summary       = %q{Indite makes it easy to manage your jekyll.}
  spec.description   = %q{Indite makes it easy to manage your jekyll.}
  spec.homepage      = "http://github.com/ytbryan/indite"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables   = ["indite"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
end
