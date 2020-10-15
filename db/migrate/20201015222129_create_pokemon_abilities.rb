class CreatePokemonAbilities < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemon_abilities do |t|
      t.integer :pokemon_id
      t.string :ability_name

      t.timestamps
    end
  end
end
