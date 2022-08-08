class CreatePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemons do |t|
      t.integer :number
      t.integer :code
      t.string :name
      t.string :type_one
      t.string :type_two
      t.string :colour
      t.string :ability_one
      t.string :ability_two
      t.string :ability_hidden
      t.integer :generation
      t.boolean :legendary
      t.boolean :mega_evo
      t.float :height
      t.float :weight
      t.integer :hp
      t.integer :atk
      t.integer :def
      t.integer :sp_atk
      t.integer :sp_def
      t.integer :spd
      t.integer :total_stat
      t.timestamps
    end
  end
end
