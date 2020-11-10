class Book < ApplicationRecord
  belongs_to :user
  has_many :users
  has_many_attached :photos

  validates :author, presence: true
  validates :title, presence: true
  validates :genre, presence: true
  validates :price, numerically: { only_integer: true} presence: true
  validates :description, presence: true

end
