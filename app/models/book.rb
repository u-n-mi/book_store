class Book < ApplicationRecord
  belongs_to :user
  has_many :users
  has_many :messages

  validates :author, presence: true
  validates :title, presence: true
  validates :genre, presence: true
  validates :price, presence: true
  validates :description, presence: true

end
