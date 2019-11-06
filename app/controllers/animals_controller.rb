class AnimalsController < ApplicationController
  # before_action :set_search, only: [:show, :index, :seach]

  def index
    @animals = Animal.order("created_at DESC")
  end

  def search
  # binding.pry
  end

  def show
    @animal = Animal.find(params[:id])
  end


  private
  def search_params
    params.require(:q).permit!
  end
end
