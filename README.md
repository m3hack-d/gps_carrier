# GPSCarrier

To start your new Phoenix application:

1. Install dependencies with `mix deps.get`
2. Start Phoenix endpoint with `mix phoenix.server`

Now you can visit `localhost:4000` from your browser.

# Deploy to Heroku

```
$ heroku create --buildpack "https://github.com/HashNuke/heroku-buildpack-elixir.git"

# setup the following environment variables
$ heroku config:set MIX_ENV=prod
$ heroku config:set DATABASE_NAME=your_database_name
$ heroku config:set DATABASE_USER=your_database_user
$ heroku config:set DATABASE_PASSWORD=your_database_password
$ heroku config:set SECRET_KEY_BASE=secret_key_base

$ git push heroku master
$ heroku open
```

