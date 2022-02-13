class Material < ApplicationRecord
    belongs_to :house
    belongs_to :user, through: :houses

    validates :name, presence: = true
    validates :name, uniqueness: = true
end
