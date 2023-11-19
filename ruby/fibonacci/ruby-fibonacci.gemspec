# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = "ruby-fibonacci"
  spec.version = "1.0.0"
  spec.summary = "Fibonacci program written in Ruby"
  spec.description = "A Fibonacci program written in Ruby programming language"
  spec.licenses = ["MIT"]
  spec.homepage = "https://github.com/altersabeh/codes#README"
  spec.authors = ["AlterSabeh"]
  spec.email = ["betamaximum22@gmail.com"]
  spec.bindir = "bin"
  spec.executables = ["ruby-fibonacci"]
  spec.require_paths = ["lib"]
  spec.required_ruby_version = ">= 2.6.0"
  spec.metadata = {
    "bug_tracker_uri"   => "https://github.com/altersabeh/codes/issues",
    "homepage_uri"      => "https://github.com/altersabeh/codes#README",
    "source_code_uri"   => "https://github.com/altersabeh/codes",
  }
  spec.files = Dir["lib/**/*.rb"] + Dir["bin/*"] + Dir["*.gemspec"]
  spec.files += [
    "README.md",
    "CHANGELOG.md",
    "LICENSE",
  ]
end
