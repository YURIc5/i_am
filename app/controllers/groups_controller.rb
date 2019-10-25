class GroupsController < ApplicationController

  def index
  end

  def show
    @group = Group.find(params[:id])
  end
  
end
