#!/usr/bin/env ruby 
require 'rubygems'
require 'xmpp4r-simple'
require 'starling'

jab_dst = "r01@thomass-macbook-air.local"
user_name = "r02@thomass-macbook-air.local"
user_pass = "meteor"
starling_server = "127.0.0.1:22122"
starling_queue = 'jabber_tx'

im = Jabber::Simple.new(user_name, user_pass)
starling = Starling.new(starling_server)

loop { 
  msg = starling.get(starling_queue)
  im.deliver(jab_dst, msg) if msg 
  sleep 1
}

