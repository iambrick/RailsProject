# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "csv"
require 'poke-api-v2'
Pokemon_Ability.destroy_all
Pokemon_Type.destroy_all
Pokemon.destroy_all
Ability.destroy_all
Region.destroy_all

csv_file = File.join(Rails.root, "db", "pokemon.csv")
csv_data = File.read(csv_file)

pokemons = CSV.parse(csv_data, headers: true)

pokemons.each do |pokemon|
  abilities = pokemon["abilities"]
  pokemonAbilities = []
  abilities.each do |pokemonAbility|
    createdAbility = Ability.find_or_create_by(name: pokemonAbility)
    pokemonAbilities.push(pokemonAbility)
  end
  createdPokemon = Pokemon.create(
    number: pokemon["pokedex_number"],
    name: pokemon["name"]
  )
end
