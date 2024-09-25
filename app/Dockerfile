# Use the official Ruby base image
FROM ruby:3.1-slim
WORKDIR /app
COPY . .
RUN bundle install
COPY app.rb /app/
EXPOSE 15090
CMD ["ruby", "app.rb"]
