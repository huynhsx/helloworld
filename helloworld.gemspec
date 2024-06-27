require_relative 'lib/helloworld/version'

Gem::Specification.new do |spec|
  spec.name          = "helloworld"
  spec.version       = Helloworld::VERSION
  spec.authors       = ["huynhsx"]
  spec.email         = ["huynh92starx@gmail.com"]

  spec.summary       = %q{A simple gem that prints 'Hello, World!'.}
  spec.description   = %q{This gem provides a basic demonstration of how to create a Ruby gem and print 'Hello, World!' to the console.}
  spec.homepage      = "https://github.com/huynhsx/helloworld"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/huynhsx/helloworld"
  spec.metadata["changelog_uri"] = "https://github.com/huynhsx/helloworld/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_development_dependency "rspec", "~> 3.0"
end
