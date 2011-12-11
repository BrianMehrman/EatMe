# -*- encoding: utf-8 -*-
files = `git ls-files`.split("\n")
Gem::Specification.new do |s|
  s.name        = "browser_detect"
  s.version     = File.read(File.expand_path(File.dirname(__FILE__)+ "/VERSION")).strip
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["rlivsey", "faunzy", "tmlee", "ggilder"]
  s.email       = []
  s.has_rdoc = 'yard'
  s.homepage    = "http://github.com/traction/browser_detect"
  s.summary     = "A simple rails browser detection plugin"
  s.description = <<-END
  Simple rails browser detection based on original plugin by Richard Livsey"
  END

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "browser_detect"
  s.add_development_dependency "bundler", ">= 1.0.0.rc.6"
  
  s.files        = files.reject{|f| f =~ /\.gem$/}
  s.executables  = files.map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end
