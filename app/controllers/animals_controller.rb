class AnimalsController < ApplicationController
  def index
    @animals = Animal.find(1)
    @image = @animals.animalimages
    # @animals = Animal.includes(:animal).page(params[:page]).per(20).order("created_at DESC")
  end
end
