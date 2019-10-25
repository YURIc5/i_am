class Animalimage < ApplicationRecord
  belongs_to :animal

  mount_uploader :image, ImageUploader
end
