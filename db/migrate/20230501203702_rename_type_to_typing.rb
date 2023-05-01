class RenameTypeToTyping < ActiveRecord::Migration[7.0]
  def change
    rename_column :pokemons, :type, :typing
  end
end
