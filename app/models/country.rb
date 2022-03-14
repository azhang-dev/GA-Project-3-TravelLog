class Country < ApplicationRecord
    belongs_to :user, optional:true
    has_many :cities
end
