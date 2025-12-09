#!/bin/bash

# Install dependencies
bundle install

# Start Jekyll with both config files
exec bundle exec jekyll serve \
  --watch \
  --force_polling \
  --livereload \
  --host 0.0.0.0 \
  --port 4000 \
  --config _config.yml,_config_dev.yml
