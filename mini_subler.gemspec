# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mini_subler/version'

Gem::Specification.new do |gem|
  gem.name          = "mini_subler"
  gem.version       = MiniSubler::VERSION
  gem.authors       = ["Wil Gieseler"]
  gem.email         = ["supapuerco@gmail.com"]
  gem.description   = %q{A lightweight Ruby wrapper around Subler's CLI interface.}
  gem.summary       = %q{A lightweight Ruby wrapper around Subler's CLI interface.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  
  gem.add_dependency 'activesupport', '>=3.0.0'
  gem.add_dependency 'cocaine'
  
end

