require 'rails_helper'

RSpec.describe Pokemon, type: :model do
  it "should validate name exists in entry" do
    pokemon = Pokemon.create(evolve:'yes', evolution_stage:'2/3', typing: 'fire', pokedex_entry:'charmeleon, the Flame Pokémon and the evolved form of Charmander. Charmeleon knocks down opponents with its tail, then defeats them using razor-sharp claws.', images:'asdfghjkl')
    expect(pokemon.errors[:name]).to_not be_empty
  end
end
