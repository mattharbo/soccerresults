require_relative "team"
require_relative "player"
require_relative "fixture"
require_relative "formation"
require_relative "selection"
require_relative "event_type"
require_relative "event"

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

cavani_attributes = {
  surname: "Edinson",
  name: "Cavani"
}

choupo_attributes = {
  surname: "Eric",
  name: "Choupo Moting"
}

fcmpsg_attributes = {
  stage: "4",
  date: "8.30.2019",
  time: "21.00"
}

mbappe_fcmpsg_selection = {
  position: "FW",
  starter: true
}

cavani_fcmpsg_selection = {
  position: "FW",
  starter: true
}

choupo_fcmpsg_selection = {
  starter: false
}

substitution_mbappe_attribute = {
  minute: "79",
  position_player_in: "MD"
}

goal_mbappe_attributes = {
  minute: 32,
  xcoord: 0.73,
  ycoord: 0.49
}

# ----------------------------

psg = Team.new(psg_attributes)
fcm = Team.new(fcm_attributes)

mbappe = Player.new(mbappe_attributes)
mbappe.change_team(psg)
cavani = Player.new(cavani_attributes)
choupo = Player.new(choupo_attributes)
choupo.change_team(psg)

fcmpsg = Fixture.new(fcmpsg_attributes)

psg_form_vs_fcm = Formation.new(psg, fcmpsg, "4-2-3-1")


mbappeselectionfcm = Selection.new(mbappe, psg_form_vs_fcm, mbappe_fcmpsg_selection)
cavaniselectionfcm = Selection.new(cavani, psg_form_vs_fcm, cavani_fcmpsg_selection)
chouposelectionfcm = Selection.new(choupo, psg_form_vs_fcm, choupo_fcmpsg_selection)

goal = EventType.new('Goal')
substitution = EventType.new("Substitution")

goalmbappe = Event.new(fcmpsg, goal, mbappe, psg, goal_mbappe_attributes, cavani)
submbappe = Event.new(fcmpsg, substitution, mbappe, psg, substitution_mbappe_attribute, choupo)

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

puts "-------"
puts mbappeselectionfcm.player
puts mbappeselectionfcm.formation
puts mbappeselectionfcm.position
puts mbappeselectionfcm.starter

puts "-------"
puts goal.name
puts substitution.name

puts "-------"
puts "#{goalmbappe.player.name} a marqué un but (x:#{goalmbappe.xcoord} / y:#{goalmbappe.ycoord}) à la #{goalmbappe.minute}ème minute pour #{goalmbappe.team.acronym} sur une passe de #{goalmbappe.second_player.name}"
puts "#{submbappe.player.name} est sorti à la #{submbappe.minute}ème minute au profit de #{submbappe.second_player.name}"

puts "-------"
puts "#{chouposelectionfcm.player.surname} #{chouposelectionfcm.player.name}"
puts chouposelectionfcm.position
puts chouposelectionfcm.starter
