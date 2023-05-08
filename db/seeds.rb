pokemons = [
    {
    name: "Charmeleon",
    evolve: "true",
    evolution_stage:"2/3",
    typing:"fire",
    pokedex_entry:"charmeleon, the Flame Pokémon and the evolved form of Charmander. Charmeleon knocks down opponents with its tail, then defeats them using razor-sharp claws.",
    images:"https://www.pngmart.com/files/22/Charmeleon-Pokemon-PNG-Pic.png"
},
    {
    name:"Wiggly Tuff",
    evolve: "false",
    evolution_stage:"3/3",
    typing:"fairy",
    pokedex_entry:"Jigglypuff, the Balloon Pokémon. When Jigglypuff's big eyes begin to quiver, everyone becomes sleepy as it sings a lullaby.",
    images:"https://static.wikia.nocookie.net/pokemonunite/images/2/23/Wigglytuff_art.png/revision/latest?cb=20210830231808"
},
    {
    name:"Digglet",
    evolve: "true",
    evolution_stage:"1/2",
    typing:"ground",
    pokedex_entry:"Diglett, the Mole Pokémon. A Ground type. Diglett gnaws on roots below ground. Depending on the kind of vegetables, it can cause great damage to a harvest.",
    images:"https://external-preview.redd.it/r474tPNnYV7lzW3zMX7DnAYHz4wyQsRFn28jb3t93po.jpg?auto=webp&s=550acdd02c36289442b4bf25fd2c9e5fc9023e41"
    },
{
    name:"Farfetch'd",
    evolve: "true"    ,
    evolution_stage:"1/2",
    typing:"flying",
    pokedex_entry:"Farfetch'd, a Wild Duck Pokémon. Farfetch'd makes a delicious meal, especially when cooked with leek. Because of this, Farfetch'd is nearly extinct.",
    images:"https://assets.pokemon.com/assets/cms2/img/pokedex/full/083.png"
}
]
pokemons.each do |pokemon|
    Pokemon.create pokemon
    puts "creating pokemon #{pokemon}"
end
