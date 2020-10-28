class PagesController < ApplicationController
  def search
    if params[:search].blank?
      redirect_to('/about', alert: "Empty search!") and return
    else
      @parameter = params[:search].downcase
      @results = Pokemon.all.where("lower(pokemonName) LIKE :search", search: "%#{@parameter}%")
    end
  end
end
