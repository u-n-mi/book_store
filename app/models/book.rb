class Book < ApplicationRecord
  belongs_to :user

  validates :address, presence: true
  validates :author, presence: true
  validates :title, presence: true
  validates :genre, presence: true
  validates :price, numerically: { only_integer: true}, presence: true
  validates :description, presence: true
  validates :photo, presence: true

  has_many :users

  has_manny_attachment :photo
end
