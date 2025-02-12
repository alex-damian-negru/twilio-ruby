##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'InsightsQuestionnairesQuestion' do
  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.flex_api.v1.insights_questionnaires_question.create(category_id: 'category_id', question: 'question', description: 'description', answer_set_id: 'answer_set_id', allow_na: true, token: 'token')
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {
        'CategoryId' => 'category_id',
        'Question' => 'question',
        'Description' => 'description',
        'AnswerSetId' => 'answer_set_id',
        'AllowNa' => true,
    }
    headers = {'Token' => 'token', }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://flex-api.twilio.com/v1/Insights/QM/Questions',
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
          "question": "What is the total time",
          "question_id": "945ac7ff-8afc-4606-be76-e94b1a80cd72",
          "description": "time spent",
          "category": {
              "category_name": "test cat",
              "category_id": "4b4e78e4-4f05-49e2-bf52-0973c5cde418"
          },
          "answer_set_id": "a6a8a54f-5305-4aec-b92c-a6e429932f58",
          "allow_na": false,
          "url": "https://flex-api.twilio.com/v1/Insights/QM/Questions/945ac7ff-8afc-4606-be76-e94b1a80cd72"
      }
      ]
    ))

    actual = @client.flex_api.v1.insights_questionnaires_question.create(category_id: 'category_id', question: 'question', description: 'description', answer_set_id: 'answer_set_id', allow_na: true)

    expect(actual).to_not eq(nil)
  end

  it "can update" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.flex_api.v1.insights_questionnaires_question('question_id').update(question: 'question', description: 'description', answer_set_id: 'answer_set_id', allow_na: true, token: 'token')
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {
        'Question' => 'question',
        'Description' => 'description',
        'AnswerSetId' => 'answer_set_id',
        'AllowNa' => true,
    }
    headers = {'Token' => 'token', }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://flex-api.twilio.com/v1/Insights/QM/Questions/question_id',
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
          "question": "What is the total time",
          "question_id": "945ac7ff-8afc-4606-be76-e94b1a80cd72",
          "description": "time spent",
          "category": {
              "category_name": "test cat",
              "category_id": "4b4e78e4-4f05-49e2-bf52-0973c5cde418"
          },
          "answer_set_id": "a6a8a54f-5305-4aec-b92c-a6e429932f58",
          "allow_na": false,
          "url": "https://flex-api.twilio.com/v1/Insights/QM/Questions/945ac7ff-8afc-4606-be76-e94b1a80cd72"
      }
      ]
    ))

    actual = @client.flex_api.v1.insights_questionnaires_question('question_id').update(question: 'question', description: 'description', answer_set_id: 'answer_set_id', allow_na: true)

    expect(actual).to_not eq(nil)
  end

  it "can delete" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.flex_api.v1.insights_questionnaires_question('question_id').delete(token: 'token')
    }.to raise_exception(Twilio::REST::TwilioError)

    headers = {'Token' => 'token', }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'delete',
        url: 'https://flex-api.twilio.com/v1/Insights/QM/Questions/question_id',
        headers: headers,
    ))).to eq(true)
  end

  it "receives delete responses" do
    @holodeck.mock(Twilio::Response.new(
        204,
      nil,
    ))

    actual = @client.flex_api.v1.insights_questionnaires_question('question_id').delete()

    expect(actual).to eq(true)
  end
end