pokemons = [
    {
    name: "Charmeleon",
    evolve: "yes",
    evolution_stage:"2/3",
    typing:"fire",
    pokedex_entry:"harmeleon, the Flame Pokémon and the evolved form of Charmander. Charmeleon knocks down opponents with its tail, then defeats them using razor-sharp claws."
},
    {
    name:"Wiggly Tuff",
    evolve:"no",
    evolution_stage:"3/3",
    typing:"fairy",
    pokedex_entry:"Jigglypuff, the Balloon Pokémon. When Jigglypuff's big eyes begin to quiver, everyone becomes sleepy as it sings a lullaby."
},
    {
    name:"Digglet",
    evolve:"yes",
    evolution_stage:"1/2",
    typing:"ground",
    pokedex_entry:"Diglett, the Mole Pokémon. A Ground type. Diglett gnaws on roots below ground. Depending on the kind of vegetables, it can cause great damage to a harvest."
    },
{
    name:"Farfetch'd",
    evolve:"yes",
    evolution_stage:"1/2",
    typing:"flying",
    pokedex_entry:"Farfetch'd, a Wild Duck Pokémon. Farfetch'd makes a delicious meal, especially when cooked with leek. Because of this, Farfetch'd is nearly extinct."
}
]
pokemons.each do |pokemon|
    Pokemon.create pokemon
    puts "creating pokemon #{pokemon}"
end
