#!/usr/bin/env ruby -rubygems
require 'bundler/setup'
require 'bundler/gem_tasks'
require 'yard'
require 'yard/rake/yardoc_task'

GEMSPEC = Gem::Specification.load(Dir.glob('*.gemspec').first)

$:.unshift(File.expand_path('lib', __dir__))
require GEMSPEC.name

YARD::Rake::YardocTask.new do |t|
  t.options += ['--title', "%s %s: %s" %
    [GEMSPEC.name, GEMSPEC.version, GEMSPEC.summary.chomp('.')]]
end

task :default => :spec

task :irb do require 'irb'; ARGV.clear; IRB.start end
