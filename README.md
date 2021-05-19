# Card Shuffler




**[Visit the live app!](https://fathomless-peak-62695.herokuapp.com/)**

Card Shuffler is a simple app to shuffle a standard deck of 52 cards. Click the shuffle button to shuffle the deck! Enjoy the endless thrills of 80658175170943878571660636856403766975289505440883277824000000000000 unique card arrangements! Each new shuffle is the first time that unique arrangement has ever existed. More fun 52! facts [here](https://czep.net/weblog/52cards.html)

![math gif](https://media.giphy.com/media/ne3xrYlWtQFtC/giphy.gif)

## But why?
This application was built for a tech challenge. The prompt was simple:
> Please design and implement a card shuffler using the language of your choice.

I chose to build with Ruby and Rails so that I could quickly spin up a simple app. I wanted to highlight some basics skills (object-oriented programming, test-driven development, database interaction, MVC design pattern, basic html/css, etc.) by creating a full stack web app but with an emphasis on back-end work. I also implemented continuous integration and deployed the app to show some basic devops familiarity. Ruby and Rails offer a lot of built in tools to make things simpler, like the in-built `shuffle` method in Ruby. However I chose to implement my own shuffle method after reading about the Fisher-Yates shuffle, to add some more fun and challenge to the project.

I utilized test driven development and the test suite has full coverage of the (very small) app. To complement the test suite, I utilized Travis CI to help ensure quality in the production build. The production app is hosted on Heroku with continuous deployment based on the CI checks.

Areas of improvement: The big ticket item on my wishlist is to implement Javascript to shuffle the cards, instead of the current approach of refreshing the whole page and hitting up the database again for data that the view already has. 


## Local Setup

#### Version Requirements

* Ruby: 2.5.3
* Rails: 5.2.6
* PostgreSQL: 13.2
* Bundler

#### Setup
1. Clone this repo to a local directory
```
$ git clone git@github.com:Strompy/card_shuffler.git
```
3. Navigate into the project directory
```
$ cd card_cshuffler
```
4. Install gems
```
$ bundle install
```
6. Setup database
```
$ rails db:{create,migrate,seed}
```
8. Run the test suite
```
$ bundle exec rspec
```
10. Start the server
```
$ rails s
```
12. Navigate to localhost:3000 in your browser
