class Category < ApplicationRecord
  has_many: :photos, dependent: :destroy

  validates: :name, presence: true, length: {maximum: 25}
end
