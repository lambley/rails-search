class PokemonsController < ApplicationController
  def index
    if params[:query].present?
      @pokemons = Pokemon.search_by_name_and_number(params[:query])
    else
      @pokemons = Pokemon.all
    end
  end
end
