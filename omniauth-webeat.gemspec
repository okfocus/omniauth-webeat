# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-webeat/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = "omniauth-webeat"
  s.version     = OmniAuth::WeBeAt::Version
  s.authors     = ["Jonathan Vingiano"]
  s.email       = ["j@okfoc.us"]
  s.homepage    = "https://github.com/okfocus/omniauth-webeat"
  s.summary     = %q{OmniAuth strategy for webe.at}
  s.description = %q{Authenticate users with webe.at using OmniAuth}

  s.rubyforge_project = "omniauth-webeat"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_dependency 'multi_json', '~> 1.3'
  s.add_runtime_dependency 'omniauth-oauth2', '~> 1.0'
  s.add_development_dependency 'rspec', '~> 2.7'
  s.add_development_dependency 'rack-test'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'webmock'
end
