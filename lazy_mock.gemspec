lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name        = 'lazy_mock'
  s.version     = '1.0.1'
  s.summary     = 'Lazy Mocks - They respond to everything man!!'
  s.description = 'Lazy Mocks just respond to anything you throw at them.'

  s.required_ruby_version = '>= 1.9.2'
  s.required_rubygems_version = ">= 1.3.6"

  s.author      = 'SageOne'
  s.email       = 'sageone@sage.com'
  s.homepage    = 'http://github.com/Sage/lazy_mock'

  s.files = Dir['{lib}/**/*'] + ['README.rdoc', 'MIT-LICENSE']

  s.add_development_dependency 'bundler', '~> 1.11'
  s.add_development_dependency 'rake', '~> 10.0'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'pry'
end
