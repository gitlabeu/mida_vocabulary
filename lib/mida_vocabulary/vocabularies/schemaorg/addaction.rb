require 'mida_vocabulary/vocabulary'

module Mida
  module SchemaOrg

    # autoload :UpdateAction, 'mida_vocabulary/vocabularies/schemaorg/updateaction'
    # autoload :Action, 'mida_vocabulary/vocabularies/schemaorg/action'
    # autoload :Thing, 'mida_vocabulary/vocabularies/schemaorg/thing'

    # The act of editing by adding an object to a collection.
    class AddAction < Mida::Vocabulary
      itemtype %r{http://schema.org/AddAction}i
      include_vocabulary Mida::SchemaOrg::UpdateAction
      include_vocabulary Mida::SchemaOrg::Action
      include_vocabulary Mida::SchemaOrg::Thing
    end

  end
end
