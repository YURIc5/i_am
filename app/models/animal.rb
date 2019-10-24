class Animal < ApplicationRecord
  has_many :users, through: :favorites
  has_many :tags, through: :animal_tags
  has_many :animalimages
  belongs_to :type
  belongs_to :group
end
