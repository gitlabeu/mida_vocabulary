require 'mida_vocabulary/vocabulary'

module Mida
  module SchemaOrg

    # autoload :Place, 'mida_vocabulary/vocabularies/schemaorg/place'
    # autoload :Thing, 'mida_vocabulary/vocabularies/schemaorg/thing'

    # A city or town.
    class City < Mida::Vocabulary
      itemtype %r{http://schema.org/City}i
      include_vocabulary Mida::SchemaOrg::Place
      include_vocabulary Mida::SchemaOrg::Thing
    end

  end
end
