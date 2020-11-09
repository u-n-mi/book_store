class Order < ApplicationRecord
  belongs_to :book
  belongs_to :user

  validates :name, presence: true
  validates :address, presence: true
  validates :email, uniqueness: true, presence: true

end
