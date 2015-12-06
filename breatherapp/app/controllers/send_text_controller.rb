class SendTextController < ApplicationController

  def index
  end

  def create
    name = current_user.name
    contact1_number = current_user.contact1_number
    contact2_number = current_user.contact2_number

    twilio_sid = ENV['TWILIO_SID']
    twilio_token = ENV['TWILIO_TOKEN']
    twilio_phone_number = ENV['TWILIO_NUMBER']

    @client = Twilio::REST::Client.new twilio_sid, twilio_token

    @client.messages.create(
      :from => "#{twilio_phone_number}",
      :to => "+1#{contact1_number}",
      :body => "Hi, it's #{name}. I am sending you a text via Take a Breather. I am feeling distressed and would like to be in touch with you as soon as possible."
    )

    @client.messages.create(
      :from => "#{twilio_phone_number}",
      :to => "+1#{contact2_number}",
      :body => "Hi, it's #{name}. I am sending you a text via Take a Breather. I am feeling distressed and would like to be in touch with you as soon as possible."
    )

    redirect_to connect_path
  end

end