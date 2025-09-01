# Library Management System — Quick start

Minimal instructions to install dependencies with Bundler, create the SQLite database and run the application.

Prerequisites
- Ruby (recommended 2.6+)
- SQLite3
- Bundler (if missing, installed below)

Setup & run (execute these commands in the project root)

```bash
# install Bundler if needed
gem install bundler

# install gems from Gemfile
bundle install

# create the database and tables (runs the schema script)
bundle exec ruby lib/create_tables.rb

# run the application (main CLI)
bundle exec ruby main.rb
```

Notes
- Run all commands from the project's root directory (where the Gemfile is).