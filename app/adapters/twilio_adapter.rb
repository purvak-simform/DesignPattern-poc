class TwilioAdapter
  def initialize
    @twilio_client = Twilio::REST::Client.new(
      ENV['TWILIO_ACCOUNT_SID'],
      ENV['TWILIO_AUTH_TOKEN']
    )
  end

  def send_sms(to, from, body)
    # Adapt the Twilio API's send_sms method
    @twilio_client.messages.create({
      from: ENV['twilio_phone_number'],
      to: 'YOUR PERSONAL PHONE NUMBER GOES HERE',
      body: message
    })
  end

  # Other methods to adapt additional functionality as needed
end
