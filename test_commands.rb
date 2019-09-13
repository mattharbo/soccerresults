require_relative "team"

# ----------------------------

psg_attributes = {
  teamname: "Paris Saint-Germain",
  acronym: "PSG",
  city: "Paris",
}

# ----------------------------

psg = Team.new(psg_attributes)

# ----------------------------

puts psg.teamname
puts psg.acronym
puts psg.city
