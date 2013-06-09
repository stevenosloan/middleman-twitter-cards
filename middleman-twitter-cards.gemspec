require File.expand_path( "../lib/middleman-twitter-cards/version", __FILE__ )

Gem::Specification.new do |s|

  s.name          = 'middleman-twitter-cards'
  s.version       = Middleman::TwitterCards::VERSION
  s.platform      = Gem::Platform::RUBY

  s.summary       = 'Generate twitter card metadata for your middleman site'
  s.description   = %q{ Generate twitter card metadata for your middleman site }
  s.authors       = ["Steven Sloan"]
  s.email         = ["stevenosloan@gmail.com"]
  s.homepage      = "http://github.com/stevenosloan/middleman-twitter-cards"

  s.files         = Dir["{lib}/**/*.rb"]
  s.test_files    = Dir["spec/**/*.rb"]
  s.require_path  = "lib"

end