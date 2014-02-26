require './player_list.rb'
require './mafia_list.rb'
require './civilian_list.rb'
require './char_list.rb'

class MafiaGame

  def initialize(array)
    @students = array
    @count = 0
  end

  def player_count
    @students.each do |info|
      if info[3] == true
        @count +=1 
      end
    end
    return @count
  end

  def students_playing
    player_list = []
    @students.each do |info|
      if info[3] == true
        player_list << info 
      end
    end
    return player_list.shuffle
  end

  def mafia_roles
    mafia = @count / 4
  end

  def civilian_roles
    civs = @count / 4
  end

  def people
    peeps = player_count - mafia_roles - civilian_roles
  end

  def assign_roles
    player_list.shuffle
  end

  def twilio_API_calls
  end

end

my_game = MafiaGame.new(player_array)
