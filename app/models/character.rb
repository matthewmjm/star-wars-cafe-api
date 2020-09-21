class Character < ApplicationRecord

    validates :name, :image, presence: true
end
