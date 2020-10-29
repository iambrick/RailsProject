class PagesController < ApplicationController
  def search
    # if params[:search].blank?
    #   redirect_to('/search') and return
    # else
      @parameter = params[:search].downcase
      @pokemonResults = Pokemon.all.where("lower(pokemonName) LIKE :search", search: "%#{@parameter}%")
      @typeResults = Type.all.where("lower(name) LIKE :search", search: "%#{@parameter}%")
      @regionResults = Region.all.where("lower(name) LIKE :search", search: "%#{@parameter}%")
      @abilityResults = Ability.all.where("lower(abilityName) LIKE :search", search: "%#{@parameter}%")

      @allEmpty = @pokemonResults.blank? && @typeResults.blank? && @regionResults.blank? && @abilityResults.blank?
    # end
  end
end
