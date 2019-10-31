class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :animal, counter_cache: :favorites_count

  validates :user_id, presence: true
  validates :animal_id, presence: true
  validates_uniqueness_of :animal_id, scope: :user_id 
end
