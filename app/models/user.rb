class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :first_name, presence: true
  # validates :photo, presence: true
  # validates :email, presence: true, uniqueness: true
  # validates :encrypted_password, presence: true
  has_one_attached :photo

  has_many :books, dependent: :destroy
  has_many :orders, through: :books
  has_many :messages

end
