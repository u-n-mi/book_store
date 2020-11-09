class Order < ApplicationRecord
    

    validates :name, :address, :email, :presence => true
end
