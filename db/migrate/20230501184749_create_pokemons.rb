class CreatePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :evolve
      t.string :evolution_stage
      t.string :type
      t.string :pokedex_entry

      t.timestamps
    end
  end
end
