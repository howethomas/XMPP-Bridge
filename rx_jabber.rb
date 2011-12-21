#!/usr/bin/env ruby 
# 
# This file receives messages from a jabber account, then prints them
# on the screen. Nothing more.
#

require 'rubygems'
require 'xmpp4r-simple'

# This lets us specify user_name and password on the command line
# If not specified, we'll use the defaults
user_name = ARGV[0] || "r02@thomass-macbook-air.local"
user_pass = ARGV[1] || "meteor"

begin
  # Initialize the jabber library and log in
  im = Jabber::Simple.new(user_name, user_pass)
  im.status(:chat, "Online at #{Time.now}")
  # Loop this forever
  while true
    # The im.received_messages function runs the code snippet after it
    # for every received message. No message? No code.
    im.received_messages do |message|
      puts "Received message from #{message.from}: #{message.body}"
    end  
    
    # Just wait around so we don't kill the CPU
    sleep 0.2
  end  
rescue Exception => e
  # This is the exception code. Any errors above, we get here.
  puts e.backtrace
end

