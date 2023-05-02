require 'rails_helper'

RSpec.describe Pokemon, type: :model do
  it "should validate name exists in entry" do
    pokemon = Pokemon.create(evolve:'yes', evolution_stage:'2/3', typing: 'fire', pokedex_entry:'charmeleon, the Flame Pokémon and the evolved form of Charmander. Charmeleon knocks down opponents with its tail, then defeats them using razor-sharp claws.', images:'asdfghjkl')
    expect(pokemon.errors[:name]).to_not be_empty
  end
  it "should validate if evolve exists in entry" do
    pokemon = Pokemon.create(name:'Charmeleon', evolution_stage:'2/3', typing: 'fire', pokedex_entry:'charmeleon, the Flame Pokémon and the evolved form of Charmander. Charmeleon knocks down opponents with its tail, then defeats them using razor-sharp claws.', images:'asdfghjkl')
    expect(pokemon.errors[:evolve]).to_not be_empty
  end
  it "should validate if evolution_stage exists in entry" do
    pokemon = Pokemon.create(name:'Charmeleon', evolve:'yes', typing: 'fire', pokedex_entry:'charmeleon, the Flame Pokémon and the evolved form of Charmander. Charmeleon knocks down opponents with its tail, then defeats them using razor-sharp claws.', images:'asdfghjkl')
    expect(pokemon.errors[:evolution_stage]).to_not be_empty
  end
  it "should validate if typing exists in entry" do
    pokemon = Pokemon.create(name:'Charmeleon', evolve:'yes', evolution_stage: '2/3', pokedex_entry:'charmeleon, the Flame Pokémon and the evolved form of Charmander. Charmeleon knocks down opponents with its tail, then defeats them using razor-sharp claws.', images:'asdfghjkl')
    expect(pokemon.errors[:typing]).to_not be_empty
  end
  it "should validate if pokedex_entry exists in entry" do
    pokemon = Pokemon.create(name:'Charmeleon', evolve:'yes', evolution_stage: '2/3', typing:'fire', images:'asdfghjkl')
    expect(pokemon.errors[:pokedex_entry]).to_not be_empty
  end
  it "should validate if images exists in entry" do
    pokemon = Pokemon.create(name:'Charmeleon', evolve:'yes', evolution_stage: '2/3', typing:'fire', pokedex_entry:'charmeleon, the Flame Pokémon and the evolved form of Charmander. Charmeleon knocks down opponents with its tail, then defeats them using razor-sharp claws.')
    expect(pokemon.errors[:images]).to_not be_empty
  end
  it "should have a pokedex_entry >= 10" do
    pokemon = Pokemon.create(name:'Charmeleon', evolve:'yes', evolution_stage: '2/3', typing:'fire', pokedex_entry:'charmeleon', images:"dsafdsaf")
  end
end
