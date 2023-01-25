##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'InsightsQuestionnairesCategory' do
  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.flex_api.v1.insights_questionnaires_category.create(name: 'name', token: 'token')
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {'Name' => 'name', }
    headers = {'Token' => 'token', }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://flex-api.twilio.com/v1/Insights/QM/Categories',
        data: values,
        headers: headers,
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "category_id": "4b4e78e4-4f05-49e2-bf52-0973c5cde419",
          "name": "abc",
          "url": "https://flex-api.twilio.com/v1/Insights/QM/Categories/4b4e78e4-4f05-49e2-bf52-0973c5cde419"
      }
      ]
    ))

    actual = @client.flex_api.v1.insights_questionnaires_category.create(name: 'name')

    expect(actual).to_not eq(nil)
  end

  it "can update" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.flex_api.v1.insights_questionnaires_category('category_id').update(name: 'name', token: 'token')
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {'Name' => 'name', }
    headers = {'Token' => 'token', }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://flex-api.twilio.com/v1/Insights/QM/Categories/category_id',
        data: values,
        headers: headers,
    ))).to eq(true)
  end

  it "receives update responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "category_id": "4b4e78e4-4f05-49e2-bf52-0973c5cde419",
          "name": "abcd",
          "url": "https://flex-api.twilio.com/v1/Insights/QM/Categories/4b4e78e4-4f05-49e2-bf52-0973c5cde419"
      }
      ]
    ))

    actual = @client.flex_api.v1.insights_questionnaires_category('category_id').update(name: 'name')

    expect(actual).to_not eq(nil)
  end

  it "can delete" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.flex_api.v1.insights_questionnaires_category('category_id').delete(token: 'token')
    }.to raise_exception(Twilio::REST::TwilioError)

    headers = {'Token' => 'token', }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'delete',
        url: 'https://flex-api.twilio.com/v1/Insights/QM/Categories/category_id',
        headers: headers,
    ))).to eq(true)
  end

  it "receives delete responses" do
    @holodeck.mock(Twilio::Response.new(
        204,
      nil,
    ))

    actual = @client.flex_api.v1.insights_questionnaires_category('category_id').delete()

    expect(actual).to eq(true)
  end
end