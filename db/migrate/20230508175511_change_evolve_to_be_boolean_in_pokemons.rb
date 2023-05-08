class ChangeEvolveToBeBooleanInPokemons < ActiveRecord::Migration[7.0]
  def change
    change_column :pokemons, :evolve, :boolean, using: 'evolve::boolean'
  end
end
