# cgminer stats collector and monitor

This app should be used for monitoring your cgminer setup

## Getting started
To create database, alter `config/database.yml` and run

    rake db:create
    rake db:migrate

Then run background data collector

    bundle exec rake stats:collect[30]

To deploy, configure your servers at `config/deploy.rb` and run

    mina deploy

## Resources

[cgminer API](https://github.com/ckolivas/cgminer/blob/master/API-README)

---

Copyright (c) 2014 Gleb Pereyaslavsky