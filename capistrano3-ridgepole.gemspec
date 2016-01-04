# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "capistrano3-ridgepole"
  spec.version       = "0.0.1"
  spec.authors       = ["timakin"]
  spec.email         = ["timaki.st@gmail.com"]
  spec.summary       = %q{Capistrano3 plugin for ridgepole schema application}
  spec.description   = %q{Capistrano3 plugin for ridgepole schema application. It can handle commands: "--apply", "--dry-run", "--diff", and the other additional options}
  spec.homepage      = "https://github.com/timakin/capistrano3-ridgepole"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "capistrano", "~> 3.4.0", '>= 3.4.0'
  spec.add_development_dependency "ridgepole", "~> 0.6.4", '>= 0.6.4'
end
