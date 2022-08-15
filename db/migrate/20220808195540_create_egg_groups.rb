class CreateEggGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :egg_groups do |t|
      t.string :name
      t.string :group_one
      t.string :group_two
      t.references :pokemon, null: false, foreign_key: true

      t.timestamps
    end
  end
end
