require File.expand_path('../lib/zassets/plugins/ember_emblem/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'zassets-plugins-ember_emblem'
  s.version     = ZAssets::Plugins::EmberEmblem::VERSION.dup
  s.summary     = "zassets-plugins-ember_emblem-#{ZAssets::Plugins::EmberEmblem::VERSION}"
  s.description = 'Ember with Emblem processor for zassets.'
  s.license     = 'BSD-3-Clause'
  s.homepage    = 'https://rubygems.org/gems/zassets-plugins-ember_emblem'

  s.author      = 'Thibault Jouan'
  s.email       = 'tj@a13.fr'

  s.files       = `git ls-files lib`.split $/
  s.extra_rdoc_files = %w[README.md]

  s.add_dependency 'ember-data-source',         '1.13.5'
  s.add_dependency 'ember-emblem-template',     '0.2.2'
  s.add_dependency 'ember-handlebars-template', '0.3.0'
  s.add_dependency 'ember-source',              '1.13.4.1'

  s.add_development_dependency 'aruba',     '~> 0.8'
  s.add_development_dependency 'cucumber',  '~> 2.0'
  s.add_development_dependency 'rake',      '~> 10.4'
  s.add_development_dependency 'rspec',     '~> 3.3'
  s.add_development_dependency 'zassets',   '~> 0.2.10'
end
