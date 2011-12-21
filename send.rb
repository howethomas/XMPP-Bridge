#!/usr/bin/env ruby 

require 'rubygems'
require 'starling'

starling_server = "127.0.0.1:22122"
starling_queue = 'jabber_tx'

server = ARGV[1] || starling_server
queue = ARGV[2] || starling_queue
starling = Starling.new(server)
msg = ARGV[0] || "Default message sent at #{Time.now}"
starling.set(queue, msg)
