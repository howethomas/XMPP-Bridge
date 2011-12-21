#!/usr/bin/env ruby 
require 'rubygems'
require 'xmpp4r-simple'

user_name = ARGV[0] || "r02@thomass-macbook-air.local"
user_pass = ARGV[1] || "meteor"


im = Jabber::Simple.new(user_name, user_pass)

while true
  im.received_messages do |message|
    puts "Received message from #{message.from}: #{message.body}"
  end  
  sleep 1
end
