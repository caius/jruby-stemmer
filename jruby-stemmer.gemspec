# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jruby-stemmer/version'

Gem::Specification.new do |gem|
  gem.name          = "jruby-stemmer"
  gem.version       = JRuby::Stemmer::VERSION
  gem.authors       = ["Caius Durling"]
  gem.email         = ["dev@caius.name"]
  gem.description   = %q{Native java implementation of a string stemming algorithm. JRuby replacement for `fast-stemmer` gem under MRI.}
  gem.summary       = %q{Fast string stemming in JRuby}
  gem.homepage      = "https://github.com/caius/jruby-stemmer"
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.platform = "java"
  gem.files << "lib/java-stemmer.jar"

  gem.add_development_dependency "rake-compiler"
  gem.add_development_dependency "rspec"

end
