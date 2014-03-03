require 'bundler'
Bundler.require
require './lib/game.rb'
require './lib/player_list.rb'
require './lib/mafia_list.rb'
require './lib/character_list.rb'
require './lib/civilian_list.rb'
require 'twilio-ruby'

class App < Sinatra::Application

  # currently only includes test sid/token/number
  account_sid = "AC24cbd663ebeb7a86d0219d62206409a8"
  # ENV['TWILIO_ACCOUNT_SID']
  auth_token = "e12190dedbe20350bafb19f062edec98"
  # ENV['TWILIO_AUTH_TOKEN']
  twilio_number = "+15005550006"
  # ENV['TWILIO_NUMBER']
  twilio = Twilio::REST::Client.new account_sid, auth_token

  from  = twilio_number

  notifications = {
    "+19739313192" => "body",
    "+14782274237" => "body2"
  }

  notifications.each do |key, value|
    twilio.account.messages.create(
      :from => from,
      :to => key,
      :body => value
      )
    puts "Sent message to #{key}"
  end

  # sms = twilio.account.sms.messages.create(:body => "All in the game, yo",
  #   :to => "+14108675309",
  #   :from => "+15005550006")
  # puts sms.body

  # post "/" do
  #   twilio.account.messages.create(
  #     :from => twilio_number,
  #     :to => '+1',
  #     :body => 
  #   )
  # end

end