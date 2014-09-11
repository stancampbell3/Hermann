# Produce messages for a given amount of time

require 'rubygems'
require 'hermann'
require 'hermann/producer'

stopTime = Time.now + 60 # One minute from now
p = Hermann::Producer.new("lms_messages", "localhost")
count = 0
while(Time.now < stopTime)
  p.push("message_#{count}")
  sleep 1
  count = count + 1
end
puts("Done!")