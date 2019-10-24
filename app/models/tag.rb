class Tag < ApplicationRecord
  has_many :animals, through: :animal_tags
end
