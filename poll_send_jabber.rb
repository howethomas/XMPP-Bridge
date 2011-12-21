#!/usr/bin/env ruby 
require 'rubygems'
require 'xmpp4r-simple'

jab_dst = "r01@thomass-macbook-air.local"
user_name = "r02@thomass-macbook-air.local"
user_pass = "meteor"

im = Jabber::Simple.new(user_name, user_pass)
while true
  im.deliver(jab_dst, "Hey there friend!")
  sleep 2
end
