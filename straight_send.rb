#!/usr/bin/env ruby 

require 'rubygems'
require 'xmpp4r-simple'
require 'starling'

jab_dst = "r01@thomass-macbook-air.local"
user_name = "r02@thomass-macbook-air.local"
user_pass = "meteor"
msg = ARGV[0] || "No message specified"

puts "Starting up..."
im = Jabber::Simple.new(user_name, user_pass)
puts "Connected.˝"
t = Thread.new { 
  puts "Delivering Message"
  im.deliver(jab_dst, msg) if msg
  puts "Delivered."
} 
puts "Waiting to finish"
t.join
puts "Finished"

