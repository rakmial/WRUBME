#!/usr/bin/env ruby

def setup_next_step
  puts "Okay, so they've cloned your repo. What steps do they have"
  puts "to do next to get it working?"
  last = false
  while !last
    next_step = gets.chomp
    puts "Another step? (y/n)"
    another = gets.chomp
    if another == "n"
      last = True
    end
    return "* #{next_step}"
  end
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

Copyright (c) 2020 **_{Joshua Lovelace}_**
This software is licensed under the GNU GPL v3 license."

File.write("README.md", README_template_copy)