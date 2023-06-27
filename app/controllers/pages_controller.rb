class PagesController < ApplicationController
  def index
    @characters=Character.all
  end
  def create 
    @character=Character.new(character_params)
    if @character.save 
      redirect_to rooth_path
    end
  end
  private
  def character_params
    params.require(:character).permit(:name, :location, :house)
  end
end
