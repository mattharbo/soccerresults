require_relative "team"
require_relative "player"

# ----------------------------

psg_attributes = {
  teamname: "Paris Saint-Germain",
  acronym: "PSG",
  city: "Paris",
}

mbappe_attributes = {
  surname: "Kylian",
  name: "MBappé"
}

fcmpsg_attributes = {
  stage = 4
  date = "8.30.2019"
  time = "21.00"
}

# ----------------------------

psg = Team.new(psg_attributes)
mbappe = Player.new(mbappe_attributes)
mbappe.change_team(psg)

# ----------------------------

puts psg.teamname
puts psg.acronym
puts psg.city

puts mbappe.name
puts mbappe.surname

puts "Le joueur #{mbappe.name} joue pour l'équipe #{mbappe.team.teamname}"
