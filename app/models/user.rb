class User < ApplicationRecord
    has_secure_password
    
    has_many :houses
    has_many :materials, through: :houses

    validates :name, presence: true
    validates :email, presence: true
    validates :email, uniqueness: true
    
end
