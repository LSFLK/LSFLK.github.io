FROM ruby:3.2-slim

# Install system dependencies needed to compile native gem extensions
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /srv/jekyll

# Install bundler
RUN gem install bundler

# Expose default Jekyll port and LiveReload port
EXPOSE 4000 35729

# Check dependencies, install if missing, then serve Jekyll with polling and livereload
CMD ["sh", "-c", "bundle check || bundle install && bundle exec jekyll serve --host 0.0.0.0 --port 4000 --livereload --force_polling"]
