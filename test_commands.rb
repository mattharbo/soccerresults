require_relative "team"
require_relative "player"
require_relative "fixture"
require_relative "formation"

# ----------------------------

psg_attributes = {
  teamname: "Paris Saint-Germain",
  acronym: "PSG",
  city: "Paris"
}

fcm_attributes = {
  teamname: "FC Metz",
  acronym: "FCM",
  city: "Metz"
}

mbappe_attributes = {
  surname: "Kylian",
  name: "MBappé"
}

fcmpsg_attributes = {
  stage: "4",
  date: "8.30.2019",
  time: "21.00"
}

# ----------------------------

psg = Team.new(psg_attributes)
fcm = Team.new(fcm_attributes)
mbappe = Player.new(mbappe_attributes)
mbappe.change_team(psg)
fcmpsg = Fixture.new(fcmpsg_attributes)
psg_form_vs_fcm = Formation.new(psg, fcmpsg, "4-2-3-1")

# ----------------------------

puts psg.teamname
puts psg.acronym
puts psg.city

puts "-------"
puts mbappe.name
puts mbappe.surname
puts "Le joueur #{mbappe.name} joue pour l'équipe #{mbappe.team.teamname}"

puts "-------"
puts fcmpsg.stage
puts fcmpsg.date
puts fcmpsg.time
puts fcmpsg.status
puts fcmpsg.final_score

puts "-------"
fcmpsg.set_score("0-0")
puts fcmpsg.status
fcmpsg.end_game
puts fcmpsg.status
fcmpsg.end_game
fcmpsg.set_score("0-0")
puts fcmpsg.final_score
fcmpsg.set_home_team(fcm)
fcmpsg.set_away_team(psg)
puts fcmpsg.awayteam.acronym

puts "-------"
puts psg_form_vs_fcm.type
