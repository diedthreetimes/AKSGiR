#!/usr/bin/env ruby
require 'pw-dictionary'
require 'guess'

keystore = ARGV[0]
mode = ARGV[1] || 'guess'
dict_name = ARGV[2]
sections = ARGV[3].to_i || 2

if mode == 'guess'
  puts "Guess Mode: #{keystore}"


  suc = false
  print "Guess: "
  while (!suc && (read = $stdin.gets.strip) )
    suc = Guess.new(keystore, read).run
    puts "Success!!!" if suc
    print "Guess: " if !suc
  end
elsif !dict.nil?
  puts "Dictionary Mode"

  dict = Dictionary.new(dict_name)

end

