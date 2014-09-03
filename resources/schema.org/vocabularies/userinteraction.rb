require 'mida_vocabulary/vocabulary'

module Mida
  module SchemaOrg

    autoload :Event, 'mida_vocabulary/vocabularies/schemaorg/event'
    autoload :Thing, 'mida_vocabulary/vocabularies/schemaorg/thing'

    # A user interacting with a page
    class UserInteraction < Mida::Vocabulary
      itemtype %r{http://schema.org/UserInteraction}i
      include_vocabulary Mida::SchemaOrg::Event
      include_vocabulary Mida::SchemaOrg::Thing
    end

  end
end
