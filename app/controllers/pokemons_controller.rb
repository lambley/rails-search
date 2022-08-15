class PokemonsController < ApplicationController
  def index
    # default to find all pokemons
    @pokemons = Pokemon.all

    # run search if query is present
    @pokemons = @pokemons.search_by_name_and_number(params[:query]) if params[:query].present?

    # set action to respond to text/plain and render partial
    respond_to do |format|
      format.html
      format.text { render partial: 'pokemons/list', formats: [:html], locals: { pokemons: @pokemons } }
    end
  end
end
