require './player_list.rb'
require './mafia_list.rb'
require './character_list.rb'
require './civilian_list.rb'

class MafiaGame

  attr_accessor :students, :count
  ROLES = []

  def initialize(array)
    @students = array
    @count = 0
  end

  def player_count
    @students.each do |info|
      if info[3] == true
        @count += 1 
      end
    end
    @count
  end

  def mafia_roles
    mafiaroles = (@count / 4).floor
    mafiaroles.times do 
      ROLES << ["Mafia", "You're in the mafia.", true]
    end
  end

  def civilian_roles
    civroles = (@count / 4).floor
    civroles.times do 
      ROLES << ["Person", "You're just a person. Figure out who is in the mafia and stay alive!", false]
    end
  end

  def civilians(char_array)
    total_civilians = player_count - mafia_roles - civilian_roles
    char_array(0..total_civilians).each do |role| 
      ROLES << role
    end
  end

  def assign_roles
    @students.shuffle!
    ROLES.pop
  end

  def twilio_API_calls
  end

end

char_array = [
      ["Sheriff", "You're the sheriff. You get to find out about one person each night phase, unless you have been killed.", false],
      ["Doctor", "You're the Doctor. During each night phase you get to choose a player to protect, unless you have been killed.", false],
      ["Grandma with Shotgun", "You are the 'Grandma with a Shotgun' and cannot be killed by the mafia during the night phase. If the mafia target you, a random mafia member will be killed. If the townspeople decide to kill you, you will die.", false],
      ["Informant", "You are the Informant. You know who is in the mafia but the mafia don't know who you are.", true],
      ["Rambo", "You are Rambo. At any one point in the game, you can throw a grenade that kills a person of your choosing plus the 2 people on either side of them.", false],
      ["Peeping Tom", "You are the peeping Tom. You can open your eyes at any point during the game, but don't get caught or you'll end up dead.", false],
      ["Postman", "You are the Postman. When you are killed, you can take someone else down with you.", false]
]

# possible_players = Player.new
# players = MafiaGame.new(possible_players.playing)
# my_game.player_count
# my_game.students_playing
# my_game.mafia_roles
# my_game.civilian_roles
# my_game.people(char_array)
# my_game.assign_roles

