require 'mail'

# Get username and password from environment variables
username = ENV["DOPPLERRELAY_USERNAME"]
password = ENV["DOPPLERRELAY_PASSWORD"]

# Relay SMTP service configuration
host = "smtp.dopplerrelay.com"
port = 587

# Custom data
from = "you@yourdomain.com"
to = "recipient1@example.com"
subject = "Hello from Doppler Relay, Ruby style!"
text = "Doppler Relay speaks plaintext"
html = "Doppler Relay speaks <b>HTML</b>"

# Send message using Mikel/Mail Library 
Mail.defaults do
  delivery_method :smtp, {
    :address   => host,
    :port      => port,
    :user_name => username,
    :password  => password,
    :authentication => :login # This line is IMPORTANT, Relay only supports this authentication type
  }
end

mail = Mail.deliver do
  to to
  from from
  subject subject

  text_part do
    body text
  end

  html_part do
    content_type 'text/html; charset=UTF-8'
    body html
  end
end
