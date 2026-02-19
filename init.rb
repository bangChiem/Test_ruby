#!/usr/bin/env ruby

require_relative 'classes/Animal.rb'

animal = Animal.new
animal.noise = "Woof!"
animal.make_noise

require 'erb'

@year = Time.now.year

template = "<% 3.times do |n|%>"
template << "Year: <%= Time.now.year + n%> \n"
template << "<%end%>"

renderer = ERB.new(template)
puts renderer.result