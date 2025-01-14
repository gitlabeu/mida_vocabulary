require 'mida_vocabulary/vocabulary'

module Mida
  module SchemaOrg

    # autoload :Action, 'mida_vocabulary/vocabularies/schemaorg/action'
    # autoload :Thing, 'mida_vocabulary/vocabularies/schemaorg/thing'
    # autoload :Organization, 'mida_vocabulary/vocabularies/schemaorg/organization'
    # autoload :Person, 'mida_vocabulary/vocabularies/schemaorg/person'

    # The act of forming a personal connection with someone/something (object) unidirectionally/asymmetrically to get updates polled from.Related actions:BefriendAction: Unlike BefriendAction, FollowAction implies that the connection is *not* necessarily reciprocal.SubscribeAction: Unlike SubscribeAction, FollowAction implies that the follower acts as an active agent constantly/actively polling for updates.RegisterAction: Unlike RegisterAction, FollowAction implies that the agent is interested in continuing receiving updates from the object.JoinAction: Unlike JoinAction, FollowAction implies that the agent is interested in getting updates from the object.TrackAction: Unlike TrackAction, FollowAction refers to the polling of updates of all aspects of animate objects rather than the location of inanimate objects (e.g. you track a package, but you don't follow it).
    class FollowAction < Mida::Vocabulary
      itemtype %r{http://schema.org/FollowAction}i
      include_vocabulary Mida::SchemaOrg::Action
      include_vocabulary Mida::SchemaOrg::Thing

      # A sub property of object. The person or organization being followed.
      has_many 'followee' do
        extract Mida::SchemaOrg::Organization
        extract Mida::SchemaOrg::Person
        extract Mida::DataType::Text
      end
    end

  end
end
