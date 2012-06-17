# -*- encoding: utf-8 -*-
require File.expand_path('../lib/guard/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Omar Ramos"]
  gem.version       = Guard::ErbVersion::VERSION
  gem.email         = ["omar@digitaltree.com"]
  gem.description   = %q{guard-erb automatically compiles a erb file into the specified directory}
  gem.summary       = %q{Guard for compiling erb files}
  gem.homepage      = "https://github.com/omarramos/guard-erb"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "guard-erb"
  gem.require_paths = ["lib"]

  gem.add_dependency 'guard', '>= 0.2.2'
end
