class AnimalsController < ApplicationController
  def index
    @animals = Animal.order("created_at DESC")
  end
end
