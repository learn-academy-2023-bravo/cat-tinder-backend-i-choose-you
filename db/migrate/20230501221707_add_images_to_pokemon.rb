class AddImagesToPokemon < ActiveRecord::Migration[7.0]
  def change
    add_column :pokemons, :images, :text
  end
end
