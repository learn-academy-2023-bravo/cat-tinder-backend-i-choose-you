class Pokemon < ApplicationRecord
    attribute :typing, :string
    validates :name, :evolve, :evolution_stage, :typing, :pokedex_entry, :images, presence: true
end
