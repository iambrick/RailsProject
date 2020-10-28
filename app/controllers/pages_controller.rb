class PagesController < ApplicationController
  def search
    if params[:search].blank?
      redirect_to('/about', alert: "Empty search!") and return
    else
      @parameter = params[:search].downcase
      @pokemonResults = Pokemon.all.where("lower(pokemonName) LIKE :search", search: "%#{@parameter}%")
      @typeResults = Type.all.where("lower(name) LIKE :search", search: "%#{@parameter}%")
      @regionResults = Region.all.where("lower(name) LIKE :search", search: "%#{@parameter}%")
      @abilityResults = Ability.all.where("lower(abilityName) LIKE :search", search: "%#{@parameter}%")
    end
  end
end
