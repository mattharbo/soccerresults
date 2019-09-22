# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

HASHOFFRENCHTEAMS = {
  1 => {
    name: "Amiens SC",
    acronym: "ASC",
    city: "Amiens"
  },
  2 => {
    name: "SCO Angers",
    acronym: "SCO",
    city: "Angers"
  },
  3 => {
    name: "FC Girondins de Bordeaux",
    acronym: "FCGB",
    city: "Bordeaux"
  },
  4 => {
    name: "Stade Brestois",
    acronym: "SB29",
    city: "Brest"
  },
  5 => {
    name: "Dijon FCO",
    acronym: "DFCO",
    city: "Dijon"
  },
  6 => {
    name: "Lille OSC",
    acronym: "LOSC",
    city: "Lille"
  },
  7 => {
    name: "Olympique Lyonnais",
    acronym: "OL",
    city: "Lyon"
  },
  8 => {
    name: "Olympique de Marseille",
    acronym: "OM",
    city: "Marseille"
  },
  9 => {
    name: "FC Metz",
    acronym: "FCM",
    city: "Metz"
  },
  10 => {
    name: "AS Monaco FC",
    acronym: "ASMFC",
    city: "Monaco"
  },
  11 => {
    name: "Montpellier Hérault FC",
    acronym: "MHFC",
    city: "Montpellier"
  },
  12 => {
    name: "FC Nantes Atlantique",
    acronym: "FCNA",
    city: "Nantes"
  },
  13 => {
    name: "OGC Nice",
    acronym: "OGCN",
    city: "Nice"
  },
  14 => {
    name: "Nîmes Olympique",
    acronym: "NO",
    city: "Nîmes"
  },
  15 => {
    name: "Paris Saint-Germain",
    acronym: "PSG",
    city: "Paris"
  },
  16 => {
    name: "Stade de Reims",
    acronym: "SdR",
    city: "Reims"
  },
  17 => {
    name: "Stade Rennais",
    acronym: "SR",
    city: "Rennes"
  },
  18 => {
    name: "AS Saint-Etienne",
    acronym: "ASSE",
    city: "Saint-Etienne"
  },
  19 => {
    name: "Racing Club de Strasbourg",
    acronym: "RCS",
    city: "Strasbourg"
  },
  20 => {
    name: "Toulouse FC",
    acronym: "TFC",
    city: "Toulouse"
  }
}

FRENCHSTADIA = {
  1 => {
    name: "Stade de la Licorne",
    capacity: 12097,
    city: "Amiens"
  },
  2 => {
    name: "Stade Raymond Kopa",
    capacity: 18752,
    city: "Angers"
  },
  3 => {
    name: "Matmut Atlantique",
    capacity: 42115,
    city: "Bordeaux"
  },
  4 => {
    name: "Stade Francis-Le Blé",
    capacity: 16000,
    city: "Brest"
  },
  5 => {
    name: "Stade Gaston-Gerard",
    capacity: 15995,
    city: "Dijon"
  },
  6 => {
    name: "Stade Pierre Mauroy",
    capacity: 50186,
    city: "Lille"
  },
  7 => {
    name: "Parc Olympique Lyonnais",
    capacity: 59186,
    city: "Lyon"
  },
  8 => {
    name: "Orange Vélodrome",
    capacity: 67394,
    city: "Marseille"
  },
  9 => {
    name: "Stade Saint-Symphorien",
    capacity: 25636,
    city: "Metz"
  },
  10 => {
    name: "Stade Louis II",
    capacity: 18523,
    city: "Monaco"
  },
  11 => {
    name: "Stade de la Mosson",
    capacity: 32900,
    city: "Montpellier"
  },
  12 => {
    name: "Stade de la Beaujoire",
    capacity: 37473,
    city: "Nantes"
  },
  13 => {
    name: "Allianz Riviera - Nice Stadium",
    capacity: 35624,
    city: "Nice"
  },
  14 => {
    name: "Stade des Costières",
    capacity: 18364,
    city: "Nîmes"
  },
  15 => {
    name: "Le Parc des Princes",
    capacity: 47929,
    city: "Paris"
  },
  16 => {
    name: "Stade Auguste-Delaune",
    capacity: 21127,
    city: "Reims"
  },
  17 => {
    name: "Roazhon Park",
    capacity: 29778,
    city: "Rennes"
  },
  18 => {
    name: "Stade Geoffroy-Guichard",
    capacity: 41965,
    city: "Saint-Etienne"
  },
  19 => {
    name: "Stade de la Meinau",
    capacity: 29320,
    city: "Strasbourg"
  },
  20 => {
    name: "Stadium de Toulouse",
    capacity: 33150,
    city: "Toulouse"
  }
}

# HASHOFFRENCHTEAMS.each do |id, team|
#   Team.create(team_name: team[:name], acronym: team[:acronym], city: team[:city])
# end

# FRENCHSTADIA.each do |id, stadium|
#   Stadium.create(name: stadium[:name], town: stadium[:city], capacity: stadium[:capacity])
# end
