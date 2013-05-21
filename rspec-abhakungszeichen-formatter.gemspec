# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rspec-abhakungszeichen-formatter/version'

Gem::Specification.new do |gem|
  gem.name          = "rspec-abhakungszeichen-formatter"
  gem.version       = Rspec::Abhakungszeichen::Formatter::VERSION
  gem.authors       = ["Rene Lengwinat"]
  gem.email         = ["rene.lengwinat@googlemail.com"]
  gem.description   = %q{Rspec2 formatter that pleases developers eyes}
  gem.summary       = %q{Unicode chars + colors to keep developers happy}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
