class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.int :number
      t.string :name
      t.int :pokemon_typeID
      t.int :regionID

      t.timestamps
    end
  end
end
