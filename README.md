# cgminer stats collector and monitor

This app should be used for monitoring your cgminer setup


* Database creation
Alter *config/database.yml* and run
      rake db:create
      rake db:migrate
      
* Run background data collector

      bundle exec rake stats:collect[30]
    
* To deploy, configure your servers at *config/deploy.rb* and run
    
      mina deploy
    
## Further reading

cgminer API https://github.com/ckolivas/cgminer/blob/master/API-README

---

(c) 2014 Gleb Pereyaslavsky