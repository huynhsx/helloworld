FROM ruby:3.2.2

# Set the working directory
WORKDIR /usr/src/app

# Copy the gem files into the container
COPY . .

# Install bundler and the gems
RUN gem install bundler && \
    bundle install && \
    gem build helloworld.gemspec && \
    gem install ./helloworld-0.1.0.gem

# Command to run the gem
ENTRYPOINT ["irb"]
