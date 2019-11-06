class Animal < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :users, through: :favorites
  has_many :animal_tags
  has_many :tags, through: :animal_tags
  has_many :animalimages
  belongs_to :type
  belongs_to :group
  # extend ActiveHash::Associations::ActiveRecordExtensions
  # belongs_to_active_hash :prefecture

  def favorite_user(user_id)
    favorites.find_by(user_id: user_id)
  end
end


