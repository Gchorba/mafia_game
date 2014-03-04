class MafiaGame

  attr_accessor :students, :count
  ROLES = []
  MAFIAPLAYERS = ["mafia players are:"]
  ALERT = []

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
      ROLES << ["You are in the mafia."]
    end
    mafiaroles
  end

  def non_mafia_roles
    char_array = [
      ["You are the sheriff. You get to find out about one person each night phase, unless you have been killed."],
      ["You are the Doctor. During each night phase you get to choose a player to protect, unless you have been killed."],
      ["You are the Grandma with a Shotgun and cannot be killed by the mafia during the night phase. If the mafia target you, a random mafia member will be killed. If the townspeople decide to kill you, you will die."],
      ["You are Rambo. At any one point in the game, you can throw a grenade that kills a person of your choosing plus the 2 people on either side of them."],
      ["You are the peeping Tom. You can open your eyes at any point during the game, but don't get caught or you'll end up dead."],
      ["You are the Postman. When you are killed, you can take someone else down with you."],
      ["You are the Informant. You know who is in the mafia but the mafia don't know who you are."]
    ]
    nonmafiaroles = (@count / 4).floor
    char_array[0..(nonmafiaroles - 1)].each do |role| 
      ROLES << role
    end
    nonmafiaroles
  end

  def civilian_roles
    total_civilians = @count - mafia_roles - non_mafia_roles
    total_civilians.times do 
      ROLES << ["You are just a person. Figure out who is in the mafia and stay alive!"]
    end
    total_civilians
  end

  def assign_roles_hash
    @students.shuffle!
    role_hash = {}
    @students.each do |student|
      phone_numbers = student[2]
      role_hash[phone_numbers] = ROLES.pop
      if role_hash[phone_numbers] == ["You are in the mafia."]
        MAFIAPLAYERS << student[0]
        ALERT << student[2]
      elsif role_hash[phone_numbers] == ["You are the Informant. You know who is in the mafia but the mafia don't know who you are."]
        ALERT << student[2]
      end 
    end
    role_hash
  end

  def who_is_mafia
    alert_hash = {}
    ALERT.each do |player|
      alert_hash[player] = MAFIAPLAYERS
    end
    alert_hash
  end

end
