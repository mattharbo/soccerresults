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

# ----------------------------

psg = Team.new(psg_attributes)
mbappe = Player.new(mbappe_attributes)
mbappe.add_team(psg)

# ----------------------------

puts psg.teamname
puts psg.acronym
puts psg.city

puts mbappe.name
puts mbappe.surname

puts "Le joueur #{mbappe.name} joue pour l'équipe #{mbappe.team.teamname}"
