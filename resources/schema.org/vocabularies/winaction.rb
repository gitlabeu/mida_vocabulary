require 'mida_vocabulary/vocabulary'

module Mida
  module SchemaOrg

    autoload :Action, 'mida_vocabulary/vocabularies/schemaorg/action'
    autoload :Thing, 'mida_vocabulary/vocabularies/schemaorg/thing'

    # The act of achieving victory in a competitive activity.
    class WinAction < Mida::Vocabulary
      itemtype %r{http://schema.org/WinAction}i
      include_vocabulary Mida::SchemaOrg::Action
      include_vocabulary Mida::SchemaOrg::Thing
    end

  end
end
