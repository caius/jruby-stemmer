spec = Gem::Specification.load("jruby-stemmer.gemspec")

require "rubygems/package_task"
Gem::PackageTask.new(spec) {}

require "rake/javaextensiontask"
Rake::JavaExtensionTask.new("java-stemmer", spec)
