class AnimalsController < ApplicationController
  def index
    @animals = Animal.order("created_at DESC")
    @q = Animal.ransack(params[:q])
    @search_animals = @q.result(distinct: true)
    @types = Type.all
  end
  

  def search
    @types = Type.all
    @q = Animal.search(search_params)
    @animals = @q.result(distinct: true)
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
