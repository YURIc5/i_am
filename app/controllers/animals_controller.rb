class AnimalsController < ApplicationController
  # before_action :set_search, only: [:show, :index, :seach]

  def index
    @animals = Animal.order("created_at DESC")
    # @q = Animal.ransack(params[:q])
    # @search_animals = @q.result(distinct: true)
    # @types = Type.all
  end

  def search
    # @types = Type.all
    # @q = Animal.search(search_params)
    # @search_animals = @q.result(distinct: true)
  end

  def show
    @animal = Animal.find(params[:id])
  end


  private
  def search_params
    params.require(:q).permit!
  end
end
