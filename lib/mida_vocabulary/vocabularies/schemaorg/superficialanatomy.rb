require 'mida_vocabulary/vocabulary'

module Mida
  module SchemaOrg

    # autoload :MedicalEntity, 'mida_vocabulary/vocabularies/schemaorg/medicalentity'
    # autoload :Thing, 'mida_vocabulary/vocabularies/schemaorg/thing'
    # autoload :AnatomicalStructure, 'mida_vocabulary/vocabularies/schemaorg/anatomicalstructure'
    # autoload :AnatomicalSystem, 'mida_vocabulary/vocabularies/schemaorg/anatomicalsystem'
    # autoload :MedicalCondition, 'mida_vocabulary/vocabularies/schemaorg/medicalcondition'
    # autoload :MedicalTherapy, 'mida_vocabulary/vocabularies/schemaorg/medicaltherapy'

    # Anatomical features that can be observed by sight (without dissection), including the form and proportions of the human body as well as surface landmarks that correspond to deeper subcutaneous structures. Superficial anatomy plays an important role in sports medicine, phlebotomy, and other medical specialties as underlying anatomical structures can be identified through surface palpation. For example, during back surgery, superficial anatomy can be used to palpate and count vertebrae to find the site of incision. Or in phlebotomy, superficial anatomy can be used to locate an underlying vein; for example, the median cubital vein can be located by palpating the borders of the cubital fossa (such as the epicondyles of the humerus) and then looking for the superficial signs of the vein, such as size, prominence, ability to refill after depression, and feel of surrounding tissue support. As another example, in a subluxation (dislocation) of the glenohumeral joint, the bony structure becomes pronounced with the deltoid muscle failing to cover the glenohumeral joint allowing the edges of the scapula to be superficially visible. Here, the superficial anatomy is the visible edges of the scapula, implying the underlying dislocation of the joint (the related anatomical structure).
    class SuperficialAnatomy < Mida::Vocabulary
      itemtype %r{http://schema.org/SuperficialAnatomy}i
      include_vocabulary Mida::SchemaOrg::MedicalEntity
      include_vocabulary Mida::SchemaOrg::Thing

      # If applicable, a description of the pathophysiology associated with the anatomical system, including potential abnormal changes in the mechanical, physical, and biochemical functions of the system.
      has_many 'associatedPathophysiology'

      # Anatomical systems or structures that relate to the superficial anatomy.
      has_many 'relatedAnatomy' do
        extract Mida::SchemaOrg::AnatomicalStructure
        extract Mida::SchemaOrg::AnatomicalSystem
        extract Mida::DataType::Text
      end

      # A medical condition associated with this anatomy.
      has_many 'relatedCondition' do
        extract Mida::SchemaOrg::MedicalCondition
        extract Mida::DataType::Text
      end

      # A medical therapy related to this anatomy.
      has_many 'relatedTherapy' do
        extract Mida::SchemaOrg::MedicalTherapy
        extract Mida::DataType::Text
      end

      # The significance associated with the superficial anatomy; as an example, how characteristics of the superficial anatomy can suggest underlying medical conditions or courses of treatment.
      has_many 'significance'
    end

  end
end
