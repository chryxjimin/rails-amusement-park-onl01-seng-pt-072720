class Ride < ApplicationRecord
    belongs_to :attraction
    belongs_to :user
    validates :user_id, :attraction_id, presence: true

    def take_ride(attraction)
        "Sorry. You do not have enough tickets to ride the #{attraction.name}. You are not tall enough to ride the #{attraction.name}."
    end
end
