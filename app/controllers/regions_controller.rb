class RegionsController < ApplicationController
  def index
    @regions = Region.all
  end

  def show
    @region = Region.find(params[:id])
    @pokemons = Pokemon.where("region_id = :id", id: @region.id)
  end
end
