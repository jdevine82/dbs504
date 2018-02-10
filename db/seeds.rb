# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Type.create([{typename: 'Bungalow' }, { typename: 'Detached House'}, {typename: 'Two-storey'}, {typename: 'Duplex'}, {typename: 'Queenslander'}, {typename: 'Stilt house'}, {typename: 'Split level house'}, {typename: 'Kit house'}])
Feature.create([{features: 'Entertainers kitchen'}, {features: 'Study'}, {features: "Children's acitvity room"}, {features: 'Alfresco area'}, {features: "Butler's pantry"}, {features: 'Cactus garden'}, {features: 'In-ground lap pool'}, {features: 'Solar panels'}])