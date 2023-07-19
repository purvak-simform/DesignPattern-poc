class WebhookController < ApplicationController
  skip_before_action :verify_authenticity_token

  def send_message
    adapter = TwilioAdapter.new

    to = params[:to]
    from = params[:from]
    body = params[:body]

    # Send SMS using the adapter
    adapter.send_sms(to, from, body)

    # ...
  end
end
