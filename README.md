# OCTO EVENT

## Dependencies

To run this project you need to have:

- Ruby 3.0.0 - You can use [RVM](http://rvm.io)
- [PostgreSQL](http://www.postgresql.org/)
  - Installation
    - OSX - `$ brew install postgresql` or install [Postgress.app](http://postgresapp.com/)
    - Linux - `$ sudo apt-get install postgresql`
    - Windows - [PostgreSQL for Windows](http://www.postgresql.org/download/windows/)
      - If you have authentication issues, try to use 'trust' authorization method.

## Setup the project

```bash
1. Install the dependencies above
2. $ git clone git@github.com:esmerino/octo_event.git octo_event # Clone the project
3. $ cd octo_event # Go into the project folder
4. $ gem install bundler # Bundler install
5. $ bin/bundle install # Install the gem dependencies
6. $ bin/rake db:reset # Reset and seed the database
7. $ bin/rspec # Run the specs to see if everything is working fine
```

## Running the project

1. `$ rails s` - Opens the server
2. Use ngrok (​https://ngrok.com/​) to install / debug the webhook calls, it generates a public url
that will route to your local host
3. `$ ngrok http 3000` - Run ngrok
![](https://user-images.githubusercontent.com/1593562/110227068-335f1280-7ed3-11eb-8547-ff69eabb6c8c.png)
4. `PUBLIC_URL/events` - Adding url
![](https://user-images.githubusercontent.com/1593562/110227092-699c9200-7ed3-11eb-9799-7b5e4ab35a76.png)
5. `localhost:300/issue/1/events` - Check events by issues


