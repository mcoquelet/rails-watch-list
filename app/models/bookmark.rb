class Bookmark < ApplicationRecord
  validates :comment, presence: true, length: { minimum: 6 }
  belongs_to :movie
  belongs_to :list
  validates :movie, presence: true, uniqueness: { scope: :list_id, message: "This movie is already in the list" }
  validates :list, presence: true
end
