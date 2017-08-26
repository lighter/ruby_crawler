FROM ruby:2.4.1
WORKDIR /code

ADD Gemfile Gemfile.lock ./

RUN bundle install

ENTRYPOINT ["ruby", "/code/job.rb"]