require 'rubygems'
require 'watir-webdriver'

Given /^user is on Contact tab of webpage.$/ do
  $My_Browser = Watir::Browser.new:firefox,:profile=> 'Automation'
  puts "Viden Contact page"
  $My_Browser.goto 'http://www.videncorporation.com/#contactus'
  puts "URL Open"
end

When /^user enters their (.*) in Name field$/ do |name|
  $My_Browser.text_field(:id => 'avia_1_1').set name

  puts "Name Field"
end

When /^enters in Subject field$/ do

  puts "Subject"
end

When /^provides their in Email address field$/ do
  $My_Browser.text_field(:id => 'avia_2_1').set "videncorporation@gmail.com"
  puts "email address"
end

When /^adds in Message field.$/ do
  puts "message"
end

And /^Clicks on Send button.$/ do
  puts "Click Send button"
end

Then /^message (.*) is displayed.$/ do |string|
  puts string
end