# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jacky/version'

Gem::Specification.new do |spec|
  spec.name          = "jacky"
  spec.version       = Jacky::VERSION
  spec.authors       = ["Khaja Minhajuddin"]
  spec.email         = ["minhajuddin@cosmicvent.com"]
  spec.summary       = %q{Commonly used code in my rails apps}
  spec.description   = %q{Includes a settings manager}
  spec.homepage      = "http://minhajuddin.com/projects/jacky"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
