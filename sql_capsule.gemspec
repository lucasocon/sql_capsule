# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sql_capsule/version'

Gem::Specification.new do |spec|
  spec.name          = "sql_capsule"
  spec.version       = SQLCapsule::VERSION
  spec.authors       = ["Paul Dawson"]
  spec.email         = ["paul@into.computer"]

  spec.summary       = %q{ Less ORM, more SQL }
  spec.description   = %q{ SQLCapsule is the culmination of many of my thoughts and concerns surrounding ORMs and how we use Ruby to interact with databases. The goal is to be a small and easy to understand tool to help you talk to your database without the baggage of a using a full fledged ORM. SQLCapsule is reminiscent of the repository pattern (though you may use it however you like) and works by registering and naming SQL queries for later use. SQLCapsule aims to provide helpful errors, and to assist you along the way to building an application specific PostgreSQL interaction layer. }

  spec.homepage      = "https://github.com/piisalie/sql_capsule"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.required_ruby_version = '~> 2.0'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"

  spec.add_dependency "pg", "~> 0.18.1"
end
