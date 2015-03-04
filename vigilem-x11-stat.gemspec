# coding: utf-8

Gem::Specification.new do |spec|
  spec.name          = 'vigilem-x11-stat'
  spec.version       = '0.0.1'
  spec.summary       = 'Stat(us) for whether or not X11 is available'
  spec.description   = 'Stat(us) for whether or not X11 is available'
  spec.authors       = ['jtzero']
  spec.email         = ['jtzero511@gmail.com']
  spec.homepage      = 'http://rubygems.org/gems/vigilem-x11-stat'
  spec.license       = 'MIT'
  
  spec.add_dependency 'vigilem-core'
  
  spec.add_development_dependency 'yard'
  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.1'
  spec.add_development_dependency 'rspec-given'
  spec.add_development_dependency 'turnip'
  spec.add_development_dependency 'guard-rspec'
  
  spec.files         = Dir['{lib,spec,ext,test,features,bin}/**/**']
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']
end
