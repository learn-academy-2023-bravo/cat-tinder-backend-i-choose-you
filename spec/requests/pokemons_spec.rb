require 'rails_helper'

RSpec.describe "Pokemons", type: :request do
  describe "GET /index" do
    it "return a list of all pokemon" do 
      Pokemon.create(
        name: "Charmeleon",
        evolve: "yes",
        evolution_stage:"2/3",
        typing:"fire",
        pokedex_entry:"charmeleon, the Flame Pokémon and the evolved form of Charmander. Charmeleon knocks down opponents with its tail, then defeats them using razor-sharp claws.",
        images:"asdfghjkl"
    )
    get'/pokemons'
    pokemon = JSON.parse(response.body)
    expect(response).to have_http_status(200)
    expect(pokemon.length).to eq 1
    end
  end
  
  describe "POST/create" do
    it "creates a pokemon" do
      poke_params = {
        pokemon: {name: "Charmeleon",
        evolve: "yes",
        evolution_stage:"2/3",
        typing:"fire",
        pokedex_entry:"charmeleon, the Flame Pokémon and the evolved form of Charmander. Charmeleon knocks down opponents with its tail, then defeats them using razor-sharp claws.",
        images:"asdfghjkl"
        }
      }
     post "/pokemons", params: poke_params
     expect(response). to have_http_status(200)
     pokemon = Pokemon.first
     expect(pokemon.name).to eq 'Charmeleon'
     expect(pokemon.evolve).to eq 'yes'
     expect(pokemon.evolution_stage).to eq '2/3'
     expect(pokemon.typing).to eq 'fire'
     expect(pokemon.pokedex_entry).to eq 'charmeleon, the Flame Pokémon and the evolved form of Charmander. Charmeleon knocks down opponents with its tail, then defeats them using razor-sharp claws.'
     expect(pokemon.images).to eq 'asdfghjkl'
    end
  end
describe 'cannot create a pokemon without valid attributes' do
  it 'cannot create a pokemon without a name' do
    poke_params = {
      pokemon: {
        evolve: 'yes',
        evolution_stage: '2/3',
        typing: 'fire',
        pokedex_entry: 'charmeleon, the Flame Pokémon and the evolved form of Charmander. Charmeleon knocks down opponents with its tail, then defeats them using razor-sharp claws.',
        images: 'asdfghjkl'
      }
    }
    post '/pokemons', params: poke_params
    pokemon = JSON.parse(response.body)

    expect(response).to have_http_status(422)
    expect(pokemon['name']).to include "cant be blank"
  end
end



end
