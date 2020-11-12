class Book < ApplicationRecord
  belongs_to :user
  has_many :users

  validates :author, presence: true
  validates :title, presence: true
  validates :genre, presence: true
  validates :price, presence: true
  validates :description, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_title_and_author_and_genre_and_description,
    against: [ :title, :author, :genre, :description ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end

