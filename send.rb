#!/usr/bin/env ruby 

# This file shows us how to send a message to a starling server
# The starling server buffers our messages, and allows us to 
# be faster on message sending 

require 'rubygems'
require 'starling'

# These are the defaults for the starling server
# and the starling server queue
starling_server = "127.0.0.1:22122"
starling_queue = 'jabber_tx'

# Start up the Starling client
server = ARGV[1] || starling_server
queue = ARGV[2] || starling_queue
starling = Starling.new(server)

# Send the message.
msg = ARGV[0] || "Default message sent at #{Time.now}"
starling.set(queue, msg)
