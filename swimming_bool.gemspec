require_relative "lib/swimming_bool/version"

Gem::Specification.new do |spec|
  spec.name = "swimming_bool"
  spec.version = SwimmingBool::VERSION
  spec.authors = ["zradford"]
  spec.email = ["zacnradford@gmail.com"]

  spec.summary = "Cool Bool Tools"
  spec.description = "Adds `yes`, `yes_please`, `no`, `no_thanks` aliases for true and false. This gem is for fun and wouldn't break a production environment, but it's not really intended for that either"
  spec.homepage = "https://www.github.com/zradford/swimming_bool"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "https://www.github.com/zradford/swimming_bool/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
