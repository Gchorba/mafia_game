# require './player_list.rb'

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
    mafiaroles
  end

  def non_mafia_roles
    char_array = [
      ["Sheriff", "You're the sheriff. You get to find out about one person each night phase, unless you have been killed.", false],
      ["Doctor", "You're the Doctor. During each night phase you get to choose a player to protect, unless you have been killed.", false],
      ["Grandma with Shotgun", "You are the 'Grandma with a Shotgun' and cannot be killed by the mafia during the night phase. If the mafia target you, a random mafia member will be killed. If the townspeople decide to kill you, you will die.", false],
      ["Informant", "You are the Informant. You know who is in the mafia but the mafia don't know who you are.", true],
      ["Rambo", "You are Rambo. At any one point in the game, you can throw a grenade that kills a person of your choosing plus the 2 people on either side of them.", false],
      ["Peeping Tom", "You are the peeping Tom. You can open your eyes at any point during the game, but don't get caught or you'll end up dead.", false],
      ["Postman", "You are the Postman. When you are killed, you can take someone else down with you.", false]
    ]
    nonmafiaroles = (@count / 4).floor
    char_array[0..(nonmafiaroles - 1)].each do |role| 
      ROLES << role
    end
    nonmafiaroles
  end

  def civilians
    total_civilians = @count - mafia_roles - non_mafia_roles
    total_civilians.times do 
      ROLES << ["Person", "You're just a person. Figure out who is in the mafia and stay alive!", false]
    end
    total_civilians
  end

  def assign_roles_hash
    @students.shuffle!
    role_hash = {}
    @students.each do |student|
      phone_numbers = student[2]
      role_hash[phone_numbers] = ROLES.pop
    end
    role_hash
  end

  # def who_is_mafia
  #   mafia_peeps = []
  #   role_hash
  #   if role_hash[student] == "Mafia"
  #     mafia_peeps << students[0]
  #   end
  #   mafia_peeps
  # end

end

# possible_players = Player.new
# players = MafiaGame.new(possible_players.playing)
# puts players.player_count
# puts players.mafia_roles
# puts players.non_mafia_roles
# puts players.civilians

