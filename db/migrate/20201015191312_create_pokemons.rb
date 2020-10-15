class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.integer :number
      t.string :name
      t.integer :pokemon_typeID
      t.integer :regionID

      t.timestamps
    end
  end
end
