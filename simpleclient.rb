#!/usr/bin/env ruby
#
# simpleclient.rb
#
# says hello!

require 'mumble-ruby'
require 'socksify'

TCPSocket::socks_server = "127.0.0.1"
TCPSocket::socks_port = 9050

mum = Mumble::Client.new('illuminati.badthin.gs', 64738, 'mumbot', '')

mum.connect
sleep 5

#100.times do
  mum.stream_raw_audio('/tmp/mpd.fifo')
  puts "water"
  sleep 300 
#end

puts mum.channels
puts mum.users
mum.disconnect

