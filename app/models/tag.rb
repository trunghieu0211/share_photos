class Tag < ApplicationRecord
  has_many: :taggings
  has_many: :photos, through: :taggings

  validates :name, presence: true, uniqueness: true, length: {maximum: 25}
end
