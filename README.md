# XField

XField is a Ruby on Rails application that curates emerging technology insights, opportunities, and venture capital partners.

## Features

- **Homepage** inspired by modern startup directories with featured news, opportunities, and investor partners.
- **Opportunities** allow founders, researchers, and operators to submit jobs, research collaborations, open-source help, or co-founder requests for review.
- **Investors** directory highlighting partner firms with calls for startups and values.
- **News** section showcasing internal editorial articles.
- **Get Updates** subscription form that collects emails for the internal team.
- **Admin dashboard** (available at `/admin`) protected with HTTP Basic authentication (`Admin` / `Team11**`) to manage articles, opportunities, investors, and subscribers.

## Getting Started

1. Install dependencies:

   ```bash
   bundle install
   ```

2. Set up the database and seed example content:

   ```bash
   bin/rails db:setup
   ```

3. Start the development server:

   ```bash
   bin/rails server
   ```

4. Visit `http://localhost:3000/` to explore the public site or `http://localhost:3000/admin` for the admin space.

## Environment Variables

- `ADMIN_USERNAME` – override the default admin username (`Admin`).
- `ADMIN_PASSWORD` – override the default admin password (`Team11**`).

## Testing

Run the default test suite (once dependencies are installed):

```bash
bin/rails test
```

## License

This project is provided as part of the XField build challenge.
