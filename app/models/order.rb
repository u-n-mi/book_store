class Order < ApplicationRecord
  belongs_to :book
  belongs_to :user
  has_one_attached :photo
end
