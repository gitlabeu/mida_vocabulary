require 'mida_vocabulary/vocabulary'

module Mida
  module SchemaOrg

    # autoload :Organization, 'mida_vocabulary/vocabularies/schemaorg/organization'
    # autoload :Thing, 'mida_vocabulary/vocabularies/schemaorg/thing'

    # A dance group - for example, the Alvin Ailey Dance Theater or Riverdance.
    class DanceGroup < Mida::Vocabulary
      itemtype %r{http://schema.org/DanceGroup}i
      include_vocabulary Mida::SchemaOrg::Organization
      include_vocabulary Mida::SchemaOrg::Thing
    end

  end
end
