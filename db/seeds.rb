# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "csv"
require 'poke-api-v2'
PokemonAbility.destroy_all
Pokemon.destroy_all
Ability.destroy_all
Region.destroy_all

csv_file = File.join(Rails.root, "db", "pokemon.csv")
csv_data = File.read(csv_file)

pokemons = CSV.parse(csv_data, headers: true)

pokemons.each do |poke|
  type1 = Type.find_or_create_by(name: poke['type1'])
  type2 = Type.find_or_create_by(name: poke['type2'])
  pokeAbilities = poke["abilities"].split(",")
  regionNumber = poke["generation"]
  case regionNumber
  when "1"
    region = Region.find_or_create_by(name: "Kanto")
    createdPokemon = Pokemon.find_or_create_by(number: poke["pokedex_number"], pokemonName: poke["name"], type1: type1, type2: type2, region: region)
  when "2"
    region = Region.find_or_create_by(name: "Johto")
    createdPokemon = Pokemon.find_or_create_by(number: poke["pokedex_number"], pokemonName: poke["name"], type1: type1, type2: type2, region: region)
  when "3"
    region = Region.find_or_create_by(name: "Hoenn")
    createdPokemon = Pokemon.find_or_create_by(number: poke["pokedex_number"], pokemonName: poke["name"], type1: type1, type2: type2, region: region)
  when "4"
    region = Region.find_or_create_by(name: "Sinnoh")
    createdPokemon = Pokemon.find_or_create_by(number: poke["pokedex_number"], pokemonName: poke["name"], type1: type1, type2: type2, region: region)
  when "5"
    region = Region.find_or_create_by(name: "Unova")
    createdPokemon = Pokemon.find_or_create_by(number: poke["pokedex_number"], pokemonName: poke["name"], type1: type1, type2: type2, region: region)
  when "6"
    region = Region.find_or_create_by(name: "Kalos")
    createdPokemon = Pokemon.find_or_create_by(number: poke["pokedex_number"], pokemonName: poke["name"], type1: type1, type2: type2, region: region)
  when "7"
    region = Region.find_or_create_by(name: "Alola")
    createdPokemon = Pokemon.find_or_create_by(number: poke["pokedex_number"], pokemonName: poke["name"], type1: type1, type2: type2, region: region)
  end
  pokeAbilities.each do |a|
    ability = Ability.find_or_create_by(abilityName: a)
    createdAbility = PokemonAbility.create(pokemon: createdPokemon, ability: ability)
  end
end
