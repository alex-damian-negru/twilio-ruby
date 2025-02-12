##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'WebChannels' do
  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.flex_api.v2.web_channels.create(address_sid: 'address_sid')
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {'AddressSid' => 'address_sid', }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://flex-api.twilio.com/v2/WebChats',
        data: values,
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "conversation_sid": "CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "identity": "seinfeld"
      }
      ]
    ))

    actual = @client.flex_api.v2.web_channels.create(address_sid: 'address_sid')

    expect(actual).to_not eq(nil)
  end
end