class EggGroup < ApplicationRecord
  belongs_to :pokemon
  validates :name, uniqueness: { scope: %i[group_one group_two] }
end
