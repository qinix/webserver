# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'webserver/version'

Gem::Specification.new do |gem|
  gem.name          = "webserver"
  gem.version       = Webserver::VERSION
  gem.authors       = ["Qinix"]
  gem.email         = ["i@qinix.com"]
  gem.description   = %q{A static web server}
  gem.summary       = %q{A simple, static web server for front-end development}
  gem.homepage      = "https://github.com/qinix/webserver"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
