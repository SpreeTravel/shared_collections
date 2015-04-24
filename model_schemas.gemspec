# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = "model_schemas"
  gem.version       = 1.0
  gem.authors       = ["Miguel Sancho"]
  gem.email         = ["sanchojaf@mail.com"]
  gem.description   = "Schema Library"
  gem.summary       = "Schema Library"
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}) { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "bson_ext", ">= 1.5.0"

  gem.add_development_dependency "bundler", "~> 1.3"
  gem.add_development_dependency "rake"
end
