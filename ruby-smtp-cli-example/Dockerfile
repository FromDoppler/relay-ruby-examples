FROM ruby:2.1.10

# Replace with your values
ENV DOPPLERRELAY_USERNAME myusername@mydomain.com
ENV DOPPLERRELAY_PASSWORD my_api_key

# Copy current code
WORKDIR /usr/src/ruby-smtp-cli-example
COPY . .

# Install dependencies
RUN gem install mail

# Example script
CMD [ "ruby", "./ruby-smtp-cli-example.rb" ]
