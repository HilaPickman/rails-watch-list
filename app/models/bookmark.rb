class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { minimum: 6 }, allow_blank: true
  # A bookmark must be linked to a movie and a list, and the [movie, list] pairings should be unique.
  validates :movie_id, presence: true, uniqueness: { scope: :list_id }
end
