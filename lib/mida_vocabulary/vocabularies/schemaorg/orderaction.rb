require 'mida_vocabulary/vocabulary'

module Mida
  module SchemaOrg

    # autoload :TradeAction, 'mida_vocabulary/vocabularies/schemaorg/tradeaction'
    # autoload :Action, 'mida_vocabulary/vocabularies/schemaorg/action'
    # autoload :Thing, 'mida_vocabulary/vocabularies/schemaorg/thing'

    # An agent orders an object/product/service to be delivered/sent.
    class OrderAction < Mida::Vocabulary
      itemtype %r{http://schema.org/OrderAction}i
      include_vocabulary Mida::SchemaOrg::TradeAction
      include_vocabulary Mida::SchemaOrg::Action
      include_vocabulary Mida::SchemaOrg::Thing
    end

  end
end
