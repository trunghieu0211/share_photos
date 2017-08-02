class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :photo

  validates: :user, :post, presence: true
  validates: :content, presence: true, length: {maximum: 100}
end
