# -*- mode: ruby; encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'multi_csv/version'

Gem::Specification.new do |s|
  
  s.name      = 'multi-csv'
  s.version   = MultiCSV::VERSION
  s.platform  = Gem::Platform::RUBY

  s.summary       = 'A single interface for using FasterCSV on Ruby 1.8 or 1.9'
  s.description   = 'If FasterCSV is the native CSV on your Ruby, MultiCSV proxies that, otherwise it proxies and requires the FasterCSV gem.'
  
  s.authors   = ["Claes Wallin (韋嘉誠)"]
  s.email     = 'claes.wallin@greatsinodevelopment.com'
  s.homepage  = 'https://github.com/clacke/multi-csv'
  
  #s.executables         = []
  s.required_rubygems_version = '>= 1.3.6'
  
  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").select{|f| f =~ /^bin/}
  s.require_paths = ["lib"]
  s.extra_rdoc_files = ["LICENSE"]

  require 'csv' 
  if ::CSV.const_defined?(:StringReader)
    s.add_dependency('fastercsv', '~> 1.5.5')
  end
end

