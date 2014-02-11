DROP TABLE roles;
CREATE TABLE if not exists roles (
id integer NOT NULL Primary Key AUTO_INCREMENT,
role TEXT,
description TEXT,
sees_mafia BOOLEAN
)


DROP TABLE students;
CREATE TABLE if not exists students (
id integer NOT NULL Primary Key AUTO_INCREMENT,
name TEXT,
email TEXT,
phone TEXT,
is_playing BOOLEAN
)


INSERT INTO roles (role, description, sees_mafia) VALUES 
("Delegate", "You're the delegate!", false),
("Mafia", "You're in the mafia.", true),
("Person", "You're just a person. Stay alive!", false),
("Sheriff", "Congrats, you're the sheriff! You get to find out about one person each night phase, unless you are killed that is.", false),
("Doctor", "During each night phase, you get to choose a player to protect.", false),
("Grandma with Shotgun", "You cannot be killed at night by the mafia. If the mafia target you, a random mafia member will be killed.", false),
("Informant", "You know who is in the mafia but the mafia don't know you.", true),
("Rambo", "You can throw a grenade that kills a person + the 2 people on either side of them at any one point in the game.", false),
("Peeping Tom", "You can open your eyes at any point during the game, but don't get caught or you'll end up dead.", false),
("Postman", "When you are killed, you can take someone else down with you.", false)


INSERT INTO students (name, email, phone, is_playing) VALUES 
("Ashley Williams", "ashley@flatironschool.com", "+19084182532", true),
("Blake Johnson", "blake@flatironschool.com", "+19176000414", true),
("Amine Tourki", "atourki@gmail.com", "+12037161196", true),
("Anisha Ramnani", "anisha.ramnani@gmail.com", "+14089609931", true),
("Ariel Isaacs", "ariel.isaacs@gmail.com", "+14154257945", true),
("Armando Amador", "Arm.amador@gmail.com", "+19175432702", true),
("Chris Haack", "chris.haack@me.com", "+13126360711", true),
("David Gabeau", "djg400@nyu.edu", "+12405933853", true),
("Derek Silverman", "dereksilverman@gmail.com", "+19417371525.", true),
("Felicia O'Garro", "felicia.ogarro@gmail.com", "+13474500396", true),
("Gustavo Guimaraes", "gustavoguimaraes@gmail.com", "+19207502147", true),
("Hannah Nordgren", "hannah.nordgren@gmail.com", "+19176370655", true),
("Jahmil Eady", "jahmileady@gmail.com", "+19172328481", true),
("Jeremy Lewis", "Lewis.JP@gmail.com", "+13476020692", true),
("Jonathan Brown", "jonathan.brown.a@gmail.com", "+16467645425", true),
("Kate Donahue", "katepdonahue@gmail.com", "+15103167758", true),
("Katie Hoffman", "ktahoffman@gmail.com", "+17202327274", true),
("Keith Williams Jr.", "keithwilliamsjr@gmail.com", "+12679187836", true),
("Keturah Walters", "ketwalters@gmail.com", "+19174340078", true),
("Nikki Thean", "nikki.thean@gmail.com", "+16097512360", true),
("Nisha Batra", "nishabatra27@gmail.com", "+19174990390", true),
("Oliver Switzer", "oliverswitzer@gmail.com", "+13475811089", true),
("Pooja Pasawala", "pooja@basicer.com", "+19739313192", true),
("Sara Gorecki", "sgorecki@gmail.com", "+15165676941", true),
("Sarah Ranso", "sranso@gmail.com", "+19196324696", true),
("Sterling Walker", "breset.walker@flatironschool.com", "+19257083984", false),
("Sean Reed", "seanreed1111@gmail.com", "+19174149644", true),
("Tessa Fallon", "tessa.fallon@gmail.com", "+1", false),
("Uzo Ukeagu", "msuzoagu.@gmail.com", "+19712226803", true),
("Vois Cornerstone", "vois.cornerstone@gmail.com", "+1", false)


#need phone from tessa and vois
#need email from sterling

