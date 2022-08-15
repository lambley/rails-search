class AddImageSourceToPokemon < ActiveRecord::Migration[7.0]
  def change
    add_column :pokemons, :img_source, :string
  end
end
