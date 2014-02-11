# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = "hub_samples"
  gem.version       = 1.0
  gem.authors       = ["Spree Commerce, Inc"]
  gem.email         = ["hub@spreecommerce.com"]
  gem.description   = "Sample JSON for the Spree Commerce Hub"
  gem.summary       = "Sample JSON for the Spree Commerce Hub"
  gem.homepage      = "http://www.spreecommerce.com"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}) { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "bson_ext", ">= 1.7.0"

  gem.add_development_dependency "bundler", "~> 1.3"
  gem.add_development_dependency "rake"
end
