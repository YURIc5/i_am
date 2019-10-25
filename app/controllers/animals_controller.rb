class AnimalsController < ApplicationController
  def index
    @animals = Animal.order("created_at DESC")
  end

  def show
    @animal = Animal.find(params[:id])
  end

end
