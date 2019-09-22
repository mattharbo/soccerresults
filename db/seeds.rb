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

HASHOFFRENCHTEAMS.each do |id, team|
  Team.create(team_name: team[:name], acronym: team[:acronym], city: team[:city])
end
