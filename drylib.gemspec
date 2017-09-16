#!/usr/bin/env ruby -rubygems
# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.version            = File.read('VERSION').chomp
  gem.date               = File.mtime('VERSION').strftime('%Y-%m-%d')

  gem.name               = 'drylib'
  gem.homepage           = 'https://github.com/dryproject/drylib.rb'
  gem.license            = "Public Domain" if gem.respond_to?(:license=)
  gem.summary            = "DRYlib for Ruby."
  gem.description        = "The polyglot programmer's standard library."

  gem.author             = "Arto Bendiken"
  gem.email              = 'arto@dryproject.org'

  gem.platform           = Gem::Platform::RUBY
  gem.files              = %w(AUTHORS UNLICENSE VERSION) + Dir.glob('lib/**/*.rb')
  gem.bindir             = %q(bin)
  gem.executables        = %w()
  gem.default_executable = gem.executables.first
  gem.require_paths      = %w(lib)
  gem.extensions         = %w()
  gem.test_files         = %w()
  gem.has_rdoc           = false

  gem.required_ruby_version      = '>= 2.4'
  gem.required_rubygems_version  = '>= 2.6.8'            # Ruby 2.4.0
  gem.requirements               = []
  gem.add_development_dependency 'rake',     '>= 12'     # Ruby 2.4.0
  gem.add_development_dependency 'minitest', '>= 5.10.1' # Ruby 2.4.0
  gem.add_development_dependency 'yard' ,    '>= 0.9'
  gem.post_install_message       = nil
end
