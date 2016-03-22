# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shapeable/version'

Gem::Specification.new do |spec|
  spec.name          = 'shapeable'
  spec.version       = Shapeable::VERSION
  spec.authors       = ['Shawn O\'Mara', 'Dean Nasseri']
  spec.email         = ['shaw3257@gmail.com']

  spec.summary       = 'API versioning that promotes convention over configuration'

  spec.description   = 'The premise of this gem is that consumers of your API need versioning
                        and different shapes of your resources. Without proper thought into versioning
                        and shaping, your codebase can quickly resolve into a redundant and confusing state.
                        This gem tries to solve that problem by allowing the API owner to use simple
                        conventions -- Accept headers and ActiveModelSerializer namespacing -- to achieve
                        controller reuse by controllers delegating resource versioning and shaping
                        to the serializer level.'

  spec.homepage      = 'https://github.com/viewthespace/shapeable'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ['lib']

  spec.add_dependency 'actionpack'
  spec.add_dependency 'activesupport'
  spec.add_dependency 'active_model_serializers'

  spec.add_development_dependency 'rspec-rails'
end
