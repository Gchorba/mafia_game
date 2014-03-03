class Player

  PLAYER_ARRAY = [
    ["Ashley Williams", "ashley@flatironschool.com", "+19084182532", true],
    ["Blake Johnson", "blake@flatironschool.com", "+19176000414", true],
    ["Amine Tourki", "atourki@gmail.com", "+12037161196", false],
    ["Anisha Ramnani", "anisha.ramnani@gmail.com", "+14089609931", true],
    ["Ariel Isaacs", "ariel.isaacs@gmail.com", "+14154257945", false],
    ["Armando Amador", "Arm.amador@gmail.com", "+19175432702", true],
    ["Chris Haack", "chris.haack@me.com", "+13126360711", true],
    ["David Gabeau", "djg400@nyu.edu", "+12405933853", true],
    ["Derek Silverman", "dereksilverman@gmail.com", "+19417371525.", false],
    ["Felicia O'Garro", "felicia.ogarro@gmail.com", "+13474500396", true],
    ["Gustavo Guimaraes", "gustavoguimaraes@gmail.com", "+19207502147", true],
    ["Hannah Nordgren", "hannah.nordgren@gmail.com", "+19176370655", true],
    ["Jahmil Eady", "jahmileady@gmail.com", "+19172328481", true],
    ["Jeremy Lewis", "Lewis.JP@gmail.com", "+13476020692", false],
    ["Jonathan Brown", "jonathan.brown.a@gmail.com", "+16467645425", true],
    ["Kate Donahue", "katepdonahue@gmail.com", "+15103167758", true],
    ["Katie Hoffman", "ktahoffman@gmail.com", "+17202327274", true],
    ["Keith Williams Jr.", "keithwilliamsjr@gmail.com", "+12679187836", true],
    ["Keturah Walters", "ketwalters@gmail.com", "+19174340078", false],
    ["Nikki Thean", "nikki.thean@gmail.com", "+16097512360", true],
    ["Nisha Batra", "nishabatra27@gmail.com", "+19174990390", true],
    ["Oliver Switzer", "oliverswitzer@gmail.com", "+13475811089", true],
    ["Pooja Pasawala", "pooja@basicer.com", "+19739313192", true],
    ["Sara Gorecki", "sgorecki@gmail.com", "+15165676941", true],
    ["Sarah Ranso", "sranso@gmail.com", "+19196324696", true],
    ["Sterling Walker", "breset.walker@gmail.com", "+19257083984", true],
    ["Sean Reed", "seanreed1111@gmail.com", "+19174149644", true],
    ["Tessa Fallon", "tessa.fallon@gmail.com", "+16467079363", true],
    ["Uzo Ukeagu", "msuzoagu.@gmail.com", "+19712226803", false],
    ["Vois Cornerstone", "vois.cornerstone@gmail.com", "+19174681347", true]
  ]

  def playing
    player_list = []
    PLAYER_ARRAY.each do |info|
      if info[3] == true
        player_list << info 
      end
    end
    player_list
  end

end

