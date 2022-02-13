class House < ApplicationRecord
    
    belongs_to :user
    has_many :materials

    validates :name, presence: = true
    validates :name, uniqueness: = true


end
