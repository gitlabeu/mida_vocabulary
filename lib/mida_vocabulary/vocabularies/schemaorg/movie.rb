require 'mida_vocabulary/vocabulary'

module Mida
  module SchemaOrg

    # autoload :CreativeWork, 'mida_vocabulary/vocabularies/schemaorg/creativework'
    # autoload :Thing, 'mida_vocabulary/vocabularies/schemaorg/thing'
    # autoload :Person, 'mida_vocabulary/vocabularies/schemaorg/person'
    # autoload :Duration, 'mida_vocabulary/vocabularies/schemaorg/duration'
    # autoload :MusicGroup, 'mida_vocabulary/vocabularies/schemaorg/musicgroup'
    # autoload :Organization, 'mida_vocabulary/vocabularies/schemaorg/organization'
    # autoload :VideoObject, 'mida_vocabulary/vocabularies/schemaorg/videoobject'

    # A movie.
    class Movie < Mida::Vocabulary
      itemtype %r{http://schema.org/Movie}i
      include_vocabulary Mida::SchemaOrg::CreativeWork
      include_vocabulary Mida::SchemaOrg::Thing

      # A cast member of the movie, tv/radio series, season, episode, or video. Supercedes actors.
      has_many 'actor' do
        extract Mida::SchemaOrg::Person
        extract Mida::DataType::Text
      end

      # The director of the movie, tv/radio episode or series. Supercedes directors.
      has_many 'director' do
        extract Mida::SchemaOrg::Person
        extract Mida::DataType::Text
      end

      # The duration of the item (movie, audio recording, event, etc.) in ISO 8601 date format.
      has_many 'duration' do
        extract Mida::SchemaOrg::Duration
        extract Mida::DataType::Text
      end

      # The composer of the movie or TV/radio soundtrack.
      has_many 'musicBy' do
        extract Mida::SchemaOrg::MusicGroup
        extract Mida::SchemaOrg::Person
        extract Mida::DataType::Text
      end

      # The producer of the movie, tv/radio series, season, or episode, or video.
      has_many 'producer' do
        extract Mida::SchemaOrg::Person
        extract Mida::DataType::Text
      end

      # The production company or studio that made the movie, tv/radio series, season, or episode, or media object.
      has_many 'productionCompany' do
        extract Mida::SchemaOrg::Organization
        extract Mida::DataType::Text
      end

      # The trailer of a movie or tv/radio series, season, or episode.
      has_many 'trailer' do
        extract Mida::SchemaOrg::VideoObject
        extract Mida::DataType::Text
      end
    end

  end
end
