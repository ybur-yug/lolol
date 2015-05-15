# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lolol/version'

Gem::Specification.new do |spec|
  spec.name          = "lolol"
  spec.version       = Lolol::VERSION
  spec.authors       = ["Robert H Grayson II"]
  spec.email         = ["bobbygrayson@gmail.com"]

  spec.summary       = %q{Type `lolol`, get a joke.}
  spec.description   = %q{See summary.}
  spec.homepage      = "https://www.github.com/ybur-yug/lolol"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables << 'lolol'
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_runtime_dependency "mechanize"
end

