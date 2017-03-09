require 'net/http'
require 'uri'
require 'json'

accountId = ENV["DOPPLERRELAY_ACCOUNT_ID"]
apikey = ENV["DOPPLERRELAY_APIKEY"]

uri = URI.parse('http://api.dopplerrelay.com/accounts/' + accountId + '/messages')

data = {
    from_name: 'Your Name',
    from_email: 'test@example.com',
    recipients: [
        {
            type: 'to',
            email: 'test@example.com',
            name: 'Test Recipient'
        }
    ],
    subject: 'Testing Doppler Relay',
    html: '<strong>Doppler Relay</strong> is great!'  
}

headers = {
    'Authorization' => 'token ' + apikey,
    'Content-type' => 'application/json'
}

http = Net::HTTP.new(uri.host, uri.port)
request = Net::HTTP::Post.new(uri.request_uri, headers)
request.body = data.to_json

response = http.request(request)

puts response.code
puts response.body