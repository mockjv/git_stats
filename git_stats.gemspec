# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'git_stats/version'

Gem::Specification.new do |gem|
  gem.name          = "git_stats"
  gem.version       = GitStats::VERSION
  gem.authors       = ["Tomasz Gieniusz"]
  gem.email         = ["tomasz.gieniusz@gmail.com"]
  gem.description   = %q{Git history statistics generator}
  gem.summary       = %q{HTML statistics generator from git repository}
  gem.homepage      = "https://github.com/tomgi/git_stats"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.required_ruby_version = Gem::Requirement.new(">= 1.9.2")

  gem.add_dependency('actionpack', '~> 6.0.2.1')
  gem.add_dependency('activesupport', '~> 6.0.2.1')
  gem.add_dependency('haml', '~> 5.1.2')
  gem.add_dependency('i18n', '~> 0.7')
  gem.add_dependency('json_pure', '~> 2.2.0')
  gem.add_dependency('lazy_high_charts', '~> 1.5.8')
  gem.add_dependency('thor', '~> 1.0.1')
  gem.add_dependency('tilt', '~> 2.0.10')

  gem.add_development_dependency('factory_girl', '~> 4.9.0')
  gem.add_development_dependency('pry', '~> 0.12.2')
  gem.add_development_dependency('rake', '~> 13.0.1')
  gem.add_development_dependency('rspec', '~> 3.9.0')
  gem.add_development_dependency('simplecov', '~> 0.18.1')
end
