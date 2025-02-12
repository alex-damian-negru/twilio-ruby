##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'PlaybackGrant' do
  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.media.v1.player_streamer('VJXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                      .playback_grant().create()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://media.twilio.com/v1/PlayerStreamers/VJXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/PlaybackGrant',
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "sid": "VJcafebabecafebabecafebabecafebabe",
          "url": "https://media.twilio.com/v1/PlayerStreamers/VJcafebabecafebabecafebabecafebabe/PlaybackGrant",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "2015-07-30T20:00:00Z",
          "grant": {
              "playbackUrl": "http://video.net/123/blabla?token=123",
              "playerStreamerSid": "VJcafebabecafebabecafebabecafebabe",
              "requestCredentials": null
          }
      }
      ]
    ))

    actual = @client.media.v1.player_streamer('VJXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                             .playback_grant().create()

    expect(actual).to_not eq(nil)
  end

  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.media.v1.player_streamer('VJXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                      .playback_grant().fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://media.twilio.com/v1/PlayerStreamers/VJXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX/PlaybackGrant',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "2015-07-30T20:00:00Z",
          "url": "https://media.twilio.com/v1/PlayerStreamers/VJcafebabecafebabecafebabecafebabe/PlaybackGrant",
          "sid": "VJcafebabecafebabecafebabecafebabe",
          "grant": {
              "playbackUrl": "http://video.net/123/blabla?token=123",
              "playerStreamerSid": "VJcafebabecafebabecafebabecafebabe",
              "requestCredentials": null
          }
      }
      ]
    ))

    actual = @client.media.v1.player_streamer('VJXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') \
                             .playback_grant().fetch()

    expect(actual).to_not eq(nil)
  end
end