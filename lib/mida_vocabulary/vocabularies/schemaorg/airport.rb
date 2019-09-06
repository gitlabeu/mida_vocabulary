require 'mida_vocabulary/vocabulary'

module Mida
  module SchemaOrg

    # autoload :CivicStructure, 'mida_vocabulary/vocabularies/schemaorg/civicstructure'
    # autoload :Place, 'mida_vocabulary/vocabularies/schemaorg/place'
    # autoload :Thing, 'mida_vocabulary/vocabularies/schemaorg/thing'

    # An airport.
    class Airport < Mida::Vocabulary
      itemtype %r{http://schema.org/Airport}i
      include_vocabulary Mida::SchemaOrg::CivicStructure
      include_vocabulary Mida::SchemaOrg::Place
      include_vocabulary Mida::SchemaOrg::Thing

      # IATA identifier for an airline or airport
      has_many 'iataCode'

      # IACO identifier for an airport.
      has_many 'icaoCode'
    end

  end
end
