require 'mida_vocabulary/vocabulary'

module Mida
  module SchemaOrg

    # autoload :Action, 'mida_vocabulary/vocabularies/schemaorg/action'
    # autoload :Thing, 'mida_vocabulary/vocabularies/schemaorg/thing'

    # The act of expressing a positive sentiment about the object. An agent likes an object (a proposition, topic or theme) with participants.
    class LikeAction < Mida::Vocabulary
      itemtype %r{http://schema.org/LikeAction}i
      include_vocabulary Mida::SchemaOrg::Action
      include_vocabulary Mida::SchemaOrg::Thing
    end

  end
end
