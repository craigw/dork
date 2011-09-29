# -*- encoding: utf-8 -*-
lib = File.expand_path '../lib/', __FILE__
$:.unshift lib unless $:.include? lib

require 'dork/version'

Gem::Specification.new do |s|
  s.name        = "dork"
  s.version     = Dork::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Craig R Webster"]
  s.email       = ["craig@barkingiguana.com"]
  s.summary     = "DOT to PNG as a service"
  s.description = "Instead of installing DOT everywhere and eating memory and CPU on those machines, make DOT available as a service"

  s.files        = Dir.glob("{lib,bin}/**/*") + %w(README.md)
  s.executables << 'dork'
  s.executables << 'dorkd'

  s.add_dependency 'stomp'
  s.requirements << 'A broker capable of talking Stomp'
end
