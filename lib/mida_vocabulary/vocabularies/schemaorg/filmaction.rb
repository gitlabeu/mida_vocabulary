require 'mida_vocabulary/vocabulary'

module Mida
  module SchemaOrg

    # autoload :Action, 'mida_vocabulary/vocabularies/schemaorg/action'
    # autoload :Thing, 'mida_vocabulary/vocabularies/schemaorg/thing'

    # The act of capturing sound and moving images on film, video, or digitally.
    class FilmAction < Mida::Vocabulary
      itemtype %r{http://schema.org/FilmAction}i
      include_vocabulary Mida::SchemaOrg::Action
      include_vocabulary Mida::SchemaOrg::Thing
    end

  end
end
