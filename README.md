# XField

XField is a Ruby on Rails application that curates the latest technology news and surfaces opportunities across jobs, research collaborations, open-source projects, and co-founder searches. It also highlights partner investors and offers a private admin dashboard to manage content.

## Features

- **Explore homepage** inspired by modern startup discovery platforms with featured opportunities, news, investors, and subscription form.
- **Opportunities**: visitors can browse and submit listings across four categories. Submissions require admin approval before publishing.
- **Investors**: showcases venture capital partners and allows firms to request a dedicated profile.
- **News**: publishes articles from the internal editorial team.
- **Get updates**: collects subscriber emails.
- **Admin dashboard** (`/admin`): manage articles, approve or reject opportunities, review investors, and export subscribers. Access is protected with HTTP basic auth (`Admin` / `Team11**`).

## Getting started

1. Install Ruby 3.4.4 and Bundler.
2. Run `bundle install` to install dependencies.
3. Set up the database and seed demo data:

   ```bash
   bin/rails db:setup
   ```

4. Start the development server:

   ```bash
   bin/rails server
   ```

5. Visit `http://localhost:3000` to explore the experience. Access the admin console at `http://localhost:3000/admin`.

## Tests

No automated test suite is included. Add RSpec or Minitest suites depending on your team's preferences.
