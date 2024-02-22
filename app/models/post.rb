class Post < ApplicationRecord
  validates :title, :body, presence: true

  enum :status, creating: 1, published: 2, expired: 3

  belongs_to :user
  has_and_belongs_to_many :tags
end

