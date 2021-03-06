class FixSchema < ActiveRecord::Migration[6.0]
  def change
    drop_table :pokemon_abilities
    drop_table :pokemon_types
    drop_table :abilities
    drop_table :types
    drop_table :pokemons
    drop_table :regions


    create_table :regions do |t|
      t.string :name

      t.timestamps
    end

    create_table :types do |t|
      t.string :name

      t.timestamps
    end

    create_table :abilities do |t|
      t.string :name

      t.timestamps
    end

    create_table :pokemons do |t|
      t.integer :number
      t.string :name
      t.string :type1
      t.string :type2
      t.integer :regionID

      t.timestamps
    end

    create_table :pokemon_abilities do |t|
      t.string :pokemonName
      t.string :abilityName

      t.timestamps
  end
end
