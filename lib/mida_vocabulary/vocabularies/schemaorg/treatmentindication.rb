require 'mida_vocabulary/vocabulary'

module Mida
  module SchemaOrg

    # autoload :MedicalEntity, 'mida_vocabulary/vocabularies/schemaorg/medicalentity'
    # autoload :Thing, 'mida_vocabulary/vocabularies/schemaorg/thing'

    # An indication for treating an underlying condition, symptom, etc.
    class TreatmentIndication < Mida::Vocabulary
      itemtype %r{http://schema.org/TreatmentIndication}i
      include_vocabulary Mida::SchemaOrg::MedicalEntity
      include_vocabulary Mida::SchemaOrg::Thing
    end

  end
end
