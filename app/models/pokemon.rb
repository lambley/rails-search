class Pokemon < ApplicationRecord
  has_many :egg_groups
  validates :number, uniqueness: { scope: :code }
end
