class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie
  validates :movie, presence: true
  validates :comment, presence: true, length: { minimum: 6 }
  validates :list_id, uniqueness: { scope: :movie_id, message: "is already in the list" }
  validates :list, presence: true
end
