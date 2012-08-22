# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spree_mollie_gateway/version'

Gem::Specification.new do |gem|
  gem.name          = "spree_mollie_gateway"
  gem.version       = SpreeMollieGateway::VERSION
  gem.authors       = ["Peter Berkenbosch"]
  gem.email         = ["peter@pero-ict.nl"]
  gem.description   = %q{Mollie ActiveMerchant payment gateway for Spree}
  gem.summary       = %q{Mollie ActiveMerchant payment gateway for Spree}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'spree_core', '~> 1.2.0'
  gem.add_dependency 'active_merchant_mollie'
end
