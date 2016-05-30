# README

## Install

### Ruby with RVM

```bash
elnazis$ \curl -sSL https://get.rvm.io | bash -s stable --ruby
elnazis$ rvm install 2.1.5
```

### Gems with Bundler

```bash
elnazis$ gem install bundler
elnazis$ bundle install
```

### Postgres Database

```bash
elnazis$ brew install postgres
elnazis$ brew services start postgres
elnazis$ rake db:create db:migrate
```

### Heroku Toolbelt

```bash
elnazis$ brew install heroku-toolbelt
elnazis$ heroku update
elnazis$ heroku login
```

## Run

```bash
elnazis$ rails server
```

## Deploy

```bash
elnazis$ git push heroku master
```
