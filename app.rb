require 'bundler'
Bundler.require
require './lib/game.rb'
require 'twilio-ruby'

class App < Sinatra::Application

  account_sid = ''
  auth_token = ''
  @client = Twilio::REST::Client.new account_sid, auth_token

  @short_code = @client.account.sms.short_codes.get("")
  puts @short_code.short_code
  
  @client.account.messages.create(
    :from => '+',
    :to => '+',
    :body => 
  )

end