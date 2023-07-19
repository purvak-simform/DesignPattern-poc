**Adapter Pattern:**

1. The Adapter pattern focuses on bridging the gap between two incompatible interfaces or systems.
   
2. The intent of the Adapter pattern is to convert the interface of one object or system to match the interface expected by the client or another system, allowing them to collaborate seamlessly.
   
3. Adapters typically adapt the interface of an external system, library, or service to match the expected interface within your application.
   
4. The Adapter pattern is suitable for scenarios where you need to integrate external components with different interfaces or work with legacy systems that have incompatible interfaces.
   
##### Example: 

Here's an example of how the Adapter pattern can be used to integrate the Twilio API into a Rails application:

Create the Twilio Adapter Class:

```ruby
# app/adapters/twilio_adapter.rb
class TwilioAdapter
  def initialize(twilio_client)
    @twilio_client = twilio_client
  end

  def send_sms(to, from, body)
    # Adapt the Twilio API's send_sms method
    @twilio_client.messages.create(
      from: from,
      to: to,
      body: body
    )
  end

  # Other methods to adapt additional functionality as needed
end
```
Integrate the Twilio Adapter in Your Application:
In your Rails application, you can use the adapter to send SMS messages by invoking the adapter's methods.
```ruby

# Usage example in a controller or service
class SmsController < ApplicationController
  def send_message
    twilio_client = Twilio::REST::Client.new # Initialize Twilio client object
    adapter = TwilioAdapter.new(twilio_client)

    to = params[:to]
    from = params[:from]
    body = params[:body]

    # Send SMS using the adapter
    adapter.send_sms(to, from, body)

    # ...
  end
end
```
In this example, the TwilioAdapter encapsulates the functionality of the Twilio API and adapts its interface to match the expected interface within your Rails application. It takes an instance of the Twilio client (Twilio::REST::Client) as a dependency.

By using the adapter, you achieve compatibility between the Twilio API and your application's interface, enabling seamless integration and sending of SMS messages.

#### For full implementation of Twilio with rails follow 
  https://www.twilio.com/blog/send-sms-ruby-rails-5-coffee-html






