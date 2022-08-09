class Pokemon < ApplicationRecord
  include PgSearch::Model
  has_many :egg_groups
  validates :number, uniqueness: { scope: :code }

  pg_search_scope :search_by_name_and_number,
    against: [ :name, :number ],
    using: {
      tsearch: { prefix: true }
    }

end
