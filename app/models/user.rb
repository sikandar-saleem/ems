class User < ApplicationRecord
    validates :first_name, :last_name, :email, :phone, presence: true
    validates :first_name, length: { maximum: 25 }
    validates :last_name, length: { maximum: 50 }
end
