Gem::Specification.new do |s|
  s.name = "cucumber-futuregov"
  s.summary = "Shared step definitions and helpers for cucumber"
  s.author = "FutureGov dev team"
  s.version = "0.0.1"
  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {spec}/*`.split("\n")
  s.homepage = "http://github.com/wearefuturegov/cucumber-futuregov"
  s.license  = "MIT"
  s.required_ruby_version = '>= 1.9.2'
end
