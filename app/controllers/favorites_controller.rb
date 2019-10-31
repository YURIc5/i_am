class FavoritesController < ApplicationController
  before_action :set_animal

  def create
    @favorite = Favorite.create(user_id: current_user.id, animal_id: params[:animal_id])
    @favorites = Favorite.where(animal_id: params[:animal_id])
    @animal.reload
    # @animals = Animal.all
  end

  def destroy
    favorite = Favorite.find_by(user_id: current_user.id, animal_id: params[:animal_id])
    favorite.destroy
    @favorites = Favorite.where(animal_id: params[:animal_id])
    @animal.reload
    # @animals = Animal.all
  end

  private

  def set_animal
    @animal = Animal.find(params[:animal_id])
  end
end
