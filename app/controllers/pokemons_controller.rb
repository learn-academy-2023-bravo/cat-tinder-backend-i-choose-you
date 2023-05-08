class PokemonsController < ApplicationController
  def index
    pokemons = Pokemon.all
    render json: pokemons
  end

  def create
    pokemon = Pokemon.create(poke_params)
    if pokemon.valid?
      render json: pokemon
    else
      render json: pokemon.errors, status: 422
    end
  end

  def update
    pokemon = Pokemon.find(params[:id])
    pokemon.update(poke_params)
    if pokemon.valid?
      render json: pokemon
    else
      render json: pokemon.errors, status: 422
    end
  end

  def delete
    pokemon = Pokemon.find(params[:id])
    if pokemon.destroy
      render json: pokemon
    else
      render json: pokemon.errors, status: 422
    end
  end

  private
  def poke_params
    params.require(:pokemon).permit(:name, :evolve, :evolution_stage, :typing, :pokedex_entry, :images)
  end
end
