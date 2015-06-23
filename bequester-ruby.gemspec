# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bequester/ruby/version'

Gem::Specification.new do |spec|
  spec.name          = 'bequester-ruby'
  spec.version       = Bequester::Ruby::VERSION
  spec.authors       = ['Raoul DIFFOUO']
  spec.email         = ['diraulo@gmail.com']

  spec.summary       = 'Ruby gem to interface with Bequester API'
  spec.description   = 'Ruby gem to interface with Bequester API'
  spec.homepage      = 'https://github.com/diraulo/bequester-ruby'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'awesome_print'

  spec.add_dependency 'httparty'
end
