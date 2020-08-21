#!/usr/bin/env ruby

def setup_next_step
  #allows for an arbitrary number of steps to setup section
  puts "Okay, you have a user and they just cloned your repo."
  last = false
  rvary = []
  while !last
    puts "What do they do next?"
    next_step = gets.chomp
    puts "Another step? (y/n)"
    another = gets.chomp
    if another == "n"
      last = true
    end
    rvary.append("* #{next_step}")
  end
  rvary.join("\n")
end


puts "What's this application's name?"
app_name = gets.chomp
puts "Who wrote it?"
contributors = gets.chomp
puts "Describe the application:"
description = gets.chomp
puts "Any known bugs?"
bug_report = gets.chomp
puts "What techs did you use?"
techs_used = gets.chomp

README_template_copy = "
# _#{app_name}_
#### By _**#{contributors}**_

## Description

_#{description}_

## Setup/Installation Requirements

* Clone this repo.
#{setup_next_step()}

## Known Bugs

_#{bug_report}_

## Support and contact details

rakmial@gmail.com

## Technologies Used

_#{techs_used}_

### License

Copyright (c) 2020 **_Joshua Lovelace_**
This software is licensed under the GNU GPL v3 license."

File.write("README.md", README_template_copy)