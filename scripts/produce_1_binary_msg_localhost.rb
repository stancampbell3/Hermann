require 'rubygems'
require 'hermann'
require 'hermann/producer'

p = Hermann::Producer.new("lms_messages", "localhost:9092")
msg =
t1 = Time.now
p.push(msg)
t2 = Time.now
elapsed = t2 - t1
puts "Done!"
puts "Total elapsed time: #{elapsed} seconds"
sleep 5
