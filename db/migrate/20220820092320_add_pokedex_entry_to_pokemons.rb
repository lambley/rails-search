class AddPokedexEntryToPokemons < ActiveRecord::Migration[7.0]
  def change
    add_column :pokemons, :entry, :text
  end
end
