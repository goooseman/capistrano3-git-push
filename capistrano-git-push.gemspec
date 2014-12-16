# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "capistrano3-git-push"
  spec.version       = "0.0.1"
  spec.authors       = ["goooseman"]
  spec.email         = ["inbox@goooseman.ru"]
  spec.summary       = "A task for Capistrano v3 to add, commit and push changes to git repo"
  spec.description   = "A task for Capistrano v3 to add, commit and push changes to git repo if there are any changes"
  spec.homepage      = "http://github.com/goooseman/capistrano3-git-push"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_runtime_dependency 'capistrano', '~> 3.1', '>= 3.1.0'
end
