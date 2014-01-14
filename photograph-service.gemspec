# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'photograph/service/version'

Gem::Specification.new do |spec|
  spec.name          = "photograph-service"
  spec.version       = Photograph::Service::VERSION
  spec.authors       = ["Jean-Hadrien Chabran"]
  spec.email         = ["jh@chabran.fr"]
  spec.description   = %q{Small web service to take screenhots of web pages}
  spec.summary       = %q{Small web service to take screenhots of web pages}
  spec.homepage      = "https://github.com/jhchabran/photograph-service"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'sinatra'
  spec.add_dependency 'sinatra-contrib'
  spec.add_dependency 'thin'
  spec.add_dependency 'photograph', '>= 0.0.6'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  gem.post_install_message = 'DEPRECATION: wait parameter had been renamed to sleep. Wait parameter will be ignored in the next version.'
end
