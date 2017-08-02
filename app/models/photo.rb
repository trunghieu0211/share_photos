class Photo < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_many: :comments, dependent: :destroy
  has_many: :taggings
  has_many: :tags, through: :taggings, dependent: :destroy

  validates :user, :category, :image, presence: true
  validates :title, presence: true, length: {maximum: 25}
end
