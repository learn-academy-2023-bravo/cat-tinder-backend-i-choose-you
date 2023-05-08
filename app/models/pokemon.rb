class Pokemon < ApplicationRecord
    attribute :typing, :string
    # validates :name, :evolve, :evolution_stage, :typing, :pokedex_entry, :images, presence: true
    validates :pokedex_entry, length: {minimum: 10}
end
