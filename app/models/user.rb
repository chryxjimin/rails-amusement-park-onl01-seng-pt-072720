class User < ApplicationRecord
    has_secure_password
    has_many :rides
    has_many :attractions, through: :rides
    validates :name, :password, :happiness, :nausea, :height, :tickets, presence: true
    
    def mood
    end
end
