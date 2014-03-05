require 'bundler'
Bundler.require
Dir.glob('./lib/*.rb') do |model|
  require model
end
require 'twilio-ruby'

class App < Sinatra::Application
  
  keys = YAML::load_file("data/config.yml")

  account_sid = keys['TWILIO_ACCOUNT_SID']
  auth_token = keys['TWILIO_AUTH_TOKEN']
  twilio_number = keys['TWILIO_NUMBER']

  twilio = Twilio::REST::Client.new account_sid, auth_token

  from  = twilio_number

  possible_players = Player.new
  players = MafiaGame.new(possible_players.playing)
  players.player_count
  players.mafia_roles
  players.non_mafia_roles
  players.civilian_roles
  role_to_send = players.assign_roles_hash
  mafia_to_send = players.who_is_mafia

  role_to_send.each do |key, value|
    twilio.account.messages.create(
      :from => from,
      :to => key,
      :body => value
      )
  end

  mafia_to_send.each do |key, value|
    twilio.account.messages.create(
      :from => from,
      :to => key,
      :body => value
      )
  end

end

