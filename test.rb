require 'rubygems'
require 'bundler'
Bundler.require(:default)


require 'sandbox'

s = Sandbox.safe

puts "Not yet safe"
puts s.eval("`ls`")


s.activate!
puts "\n\nSafe:"
puts s.eval("`ls`")
