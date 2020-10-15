class CreatePokemonTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemon_types do |t|
      t.integer :pokemon_number
      t.string :type_name

      t.timestamps
    end
  end
end
