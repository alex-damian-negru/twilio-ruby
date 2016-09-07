##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /       

require 'spec_helper.rb'

describe 'Member' do
  it "can fetch" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))
    
    expect {
      @client.chat.v1.services("ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                     .channels("CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                     .members("MBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").fetch()
    }.to raise_exception(Twilio::REST::TwilioException)
    
    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://chat.twilio.com/v1/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Channels/CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Members/MBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "sid": "MBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "channel_sid": "CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "service_sid": "ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "identity": "jing",
          "role_sid": "RL003876fe89d744dfa576824b53c26784",
          "last_consumed_message_index": null,
          "last_consumption_timestamp": null,
          "date_created": "2016-03-24T21:05:50Z",
          "date_updated": "2016-03-24T21:05:50Z",
          "url": "https://ip-messaging.twilio.com/v1/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Channels/CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Members/MBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))
    
    actual = @client.chat.v1.services("ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                            .channels("CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                            .members("MBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").fetch()
    
    expect(actual).to_not eq(nil)
  end

  it "can create" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))
    
    expect {
      @client.chat.v1.services("ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                     .channels("CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                     .members.create(identity: "identity")
    }.to raise_exception(Twilio::REST::TwilioException)
    
    values = {
        'Identity' => "identity",
    }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://chat.twilio.com/v1/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Channels/CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Members',
        data: values,
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        201,
      %q[
      {
          "sid": "MBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "channel_sid": "CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "service_sid": "ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "identity": "jing",
          "role_sid": "RL003876fe89d744dfa576824b53c26784",
          "last_consumed_message_index": null,
          "last_consumption_timestamp": null,
          "date_created": "2016-03-24T21:05:50Z",
          "date_updated": "2016-03-24T21:05:50Z",
          "url": "https://ip-messaging.twilio.com/v1/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Channels/CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Members/MBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))
    
    actual = @client.chat.v1.services("ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                            .channels("CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                            .members.create(identity: "identity")
    
    expect(actual).to_not eq(nil)
  end

  it "can read" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))
    
    expect {
      @client.chat.v1.services("ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                     .channels("CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                     .members.list()
    }.to raise_exception(Twilio::REST::TwilioException)
    
    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://chat.twilio.com/v1/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Channels/CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Members',
    ))).to eq(true)
  end

  it "receives read_full responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "meta": {
              "page": 0,
              "page_size": 1,
              "first_page_url": "https://ip-messaging.twilio.com/v1/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Channels/CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Members?PageSize=1&Page=0",
              "previous_page_url": null,
              "url": "https://ip-messaging.twilio.com/v1/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Channels/CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Members?PageSize=1&Page=0",
              "next_page_url": null,
              "key": "members"
          },
          "members": [
              {
                  "sid": "MBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "channel_sid": "CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "service_sid": "ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "identity": "jing",
                  "role_sid": "RL003876fe89d744dfa576824b53c26784",
                  "last_consumed_message_index": null,
                  "last_consumption_timestamp": null,
                  "date_created": "2016-03-24T21:05:50Z",
                  "date_updated": "2016-03-24T21:05:50Z",
                  "url": "https://ip-messaging.twilio.com/v1/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Channels/CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Members/MBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
              }
          ]
      }
      ]
    ))
    
    actual = @client.chat.v1.services("ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                            .channels("CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                            .members.list()
    
    expect(actual).to_not eq(nil)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "meta": {
              "page": 0,
              "page_size": 1,
              "first_page_url": "https://ip-messaging.twilio.com/v1/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Channels/CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Members?PageSize=1&Page=0",
              "previous_page_url": null,
              "url": "https://ip-messaging.twilio.com/v1/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Channels/CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Members?PageSize=1&Page=0",
              "next_page_url": null,
              "key": "members"
          },
          "members": []
      }
      ]
    ))
    
    actual = @client.chat.v1.services("ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                            .channels("CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                            .members.list()
    
    expect(actual).to_not eq(nil)
  end

  it "can delete" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))
    
    expect {
      @client.chat.v1.services("ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                     .channels("CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                     .members("MBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").delete()
    }.to raise_exception(Twilio::REST::TwilioException)
    
    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'delete',
        url: 'https://chat.twilio.com/v1/Services/ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Channels/CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Members/MBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
    ))).to eq(true)
  end

  it "receives delete responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        204,
      nil,
    ))
    
    actual = @client.chat.v1.services("ISaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                            .channels("CHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                            .members("MBaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").delete()
    
    expect(actual).to eq(true)
  end
end