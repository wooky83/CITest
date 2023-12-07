# -*- encoding: utf-8 -*-
# stub: danger-xcode_summary 1.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "danger-xcode_summary".freeze
  s.version = "1.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Diogo Tridapalli".freeze, "Marcelo Fabri".freeze]
  s.date = "2022-04-30"
  s.description = "Show formatted xcodebuild output in your PRs.".freeze
  s.email = ["me@diogot.com".freeze, "me@marcelofabri.com".freeze]
  s.homepage = "https://github.com/diogot/danger-xcode_summary".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.4.0".freeze)
  s.rubygems_version = "3.3.7".freeze
  s.summary = "A [Danger](http://danger.systems) plugin that shows all build errors, warnings and unit tests results generated from `xcodebuild`.".freeze

  s.installed_by_version = "3.3.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<xcresult>.freeze, ["~> 0.2"])
    s.add_runtime_dependency(%q<danger-plugin-api>.freeze, ["~> 1.0"])
    s.add_development_dependency(%q<bundler>.freeze, [">= 2.2.10"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.4"])
    s.add_development_dependency(%q<guard>.freeze, ["~> 2.14"])
    s.add_development_dependency(%q<guard-rspec>.freeze, ["~> 4.7"])
    s.add_development_dependency(%q<listen>.freeze, ["~> 3.0"])
    s.add_development_dependency(%q<pry>.freeze, [">= 0"])
  else
    s.add_dependency(%q<xcresult>.freeze, ["~> 0.2"])
    s.add_dependency(%q<danger-plugin-api>.freeze, ["~> 1.0"])
    s.add_dependency(%q<bundler>.freeze, [">= 2.2.10"])
    s.add_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.4"])
    s.add_dependency(%q<guard>.freeze, ["~> 2.14"])
    s.add_dependency(%q<guard-rspec>.freeze, ["~> 4.7"])
    s.add_dependency(%q<listen>.freeze, ["~> 3.0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
  end
end
