# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::PersonalizeEvents
  module Types

    # Represents user interaction event information sent using the
    # `PutEvents` API.
    #
    # @note When making an API call, you may pass Event
    #   data as a hash:
    #
    #       {
    #         event_id: "StringType",
    #         event_type: "StringType", # required
    #         properties: "EventPropertiesJSON", # required
    #         sent_at: Time.now, # required
    #       }
    #
    # @!attribute [rw] event_id
    #   An ID associated with the event. If an event ID is not provided,
    #   Amazon Personalize generates a unique ID for the event. An event ID
    #   is not used as an input to the model. Amazon Personalize uses the
    #   event ID to distinquish unique events. Any subsequent events after
    #   the first with the same event ID are not used in model training.
    #   @return [String]
    #
    # @!attribute [rw] event_type
    #   The type of event. This property corresponds to the `EVENT_TYPE`
    #   field of the Interactions schema.
    #   @return [String]
    #
    # @!attribute [rw] properties
    #   A string map of event-specific data that you might choose to record.
    #   For example, if a user rates a movie on your site, you might send
    #   the movie ID and rating, and the number of movie ratings made by the
    #   user.
    #
    #   Each item in the map consists of a key-value pair. For example,
    #
    #   `\{"itemId": "movie1"\}`
    #
    #   `\{"itemId": "movie2", "eventValue": "4.5"\}`
    #
    #   `\{"itemId": "movie3", "eventValue": "3", "numberOfRatings": "12"\}`
    #
    #   The keys use camel case names that match the fields in the
    #   Interactions schema. The `itemId` and `eventValue` keys correspond
    #   to the `ITEM_ID` and `EVENT_VALUE` fields. In the above example, the
    #   `eventType` might be 'MovieRating' with `eventValue` being the
    #   rating. The `numberOfRatings` would match the
    #   'NUMBER\_OF\_RATINGS' field defined in the Interactions schema.
    #   @return [String]
    #
    # @!attribute [rw] sent_at
    #   The timestamp on the client side when the event occurred.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-events-2018-03-22/Event AWS API Documentation
    #
    class Event < Struct.new(
      :event_id,
      :event_type,
      :properties,
      :sent_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provide a valid value for the field or parameter.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-events-2018-03-22/InvalidInputException AWS API Documentation
    #
    class InvalidInputException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutEventsRequest
    #   data as a hash:
    #
    #       {
    #         tracking_id: "StringType", # required
    #         user_id: "UserId",
    #         session_id: "StringType", # required
    #         event_list: [ # required
    #           {
    #             event_id: "StringType",
    #             event_type: "StringType", # required
    #             properties: "EventPropertiesJSON", # required
    #             sent_at: Time.now, # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] tracking_id
    #   The tracking ID for the event. The ID is generated by a call to the
    #   [CreateEventTracker][1] API.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/personalize/latest/dg/API_CreateEventTracker.html
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The user associated with the event.
    #   @return [String]
    #
    # @!attribute [rw] session_id
    #   The session ID associated with the user's visit.
    #   @return [String]
    #
    # @!attribute [rw] event_list
    #   A list of event data from the session.
    #   @return [Array<Types::Event>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/personalize-events-2018-03-22/PutEventsRequest AWS API Documentation
    #
    class PutEventsRequest < Struct.new(
      :tracking_id,
      :user_id,
      :session_id,
      :event_list)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end