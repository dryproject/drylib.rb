#!/usr/bin/env ruby -rubygems
require 'bundler/setup'
require 'bundler/gem_tasks'
require 'rake/clean'
require 'rake/testtask'
require 'yard'
require 'yard/rake/yardoc_task'

GEMSPEC = Gem::Specification.load(Dir.glob('*.gemspec').first)

$:.unshift(File.expand_path('lib', __dir__))
require GEMSPEC.name

Rake::TestTask.new do |t|
  t.libs = %w(test lib)
  t.pattern = 'test/test*.rb'
  t.verbose = false
  t.warning = true
end

YARD::Rake::YardocTask.new do |t|
  t.options += ['--title', "%s %s: %s" %
    [GEMSPEC.name, GEMSPEC.version, GEMSPEC.summary.chomp('.')]]
end

task :default => :test

task :irb do require 'irb'; ARGV.clear; IRB.start end

CLEAN.include('*.html')
CLOBBER.include('Gemfile.lock')
