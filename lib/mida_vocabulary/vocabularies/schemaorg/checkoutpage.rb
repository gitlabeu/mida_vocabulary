require 'mida_vocabulary/vocabulary'

module Mida
  module SchemaOrg

    # autoload :WebPage, 'mida_vocabulary/vocabularies/schemaorg/webpage'
    # autoload :CreativeWork, 'mida_vocabulary/vocabularies/schemaorg/creativework'
    # autoload :Thing, 'mida_vocabulary/vocabularies/schemaorg/thing'

    # Web page type: Checkout page.
    class CheckoutPage < Mida::Vocabulary
      itemtype %r{http://schema.org/CheckoutPage}i
      include_vocabulary Mida::SchemaOrg::WebPage
      include_vocabulary Mida::SchemaOrg::CreativeWork
      include_vocabulary Mida::SchemaOrg::Thing
    end

  end
end
