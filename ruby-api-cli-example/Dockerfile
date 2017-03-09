FROM ruby:2.1.10

# Replace with your values
ENV DOPPLERRELAY_ACCOUNT_ID 12345 
ENV DOPPLERRELAY_ACCOUNT_NAME my-account-name
ENV DOPPLERRELAY_APIKEY my_api_key

# Copy current code
WORKDIR /usr/src/ruby-api-cli-example
COPY . .

# Example script
CMD [ "ruby", "./ruby-api-cli-example.rb" ]
