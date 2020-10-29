class TypesController < ApplicationController
  def index
    @types = Type.all
  end

  def show
    @type = Type.find(params[:id])
    @pokemons = Pokemon.where("type1 LIKE :type OR type2 LIKE :type", type: @type.name)
  end
end
