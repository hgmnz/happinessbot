# encoding: UTF-8
load 'twitter_auth.rb'
require 'tweetbot'

bot = TweetBot.configure do |config|
  config.response_frequency = 1

  config.respond_to_phrase "burger" do |responses|
    responses << %{"Sacred cows make the best hamburger." -Mark Twain} << %{"It requires a certain kind of mind to see beauty in a hamburger bun." -Ray Kroc} << %{"The journey of a thousand pounds begins with a single burger." -Chris O'Brien} << %{"A Hamburger is warm and fragrant and juicy. A hamburger is soft and nonthreatening." -Tom Robbins} << %{"Rock and roll is the hamburger that ate the world." -Peter York} << %{"Everyone has a right to a university degree in America, even if it's in Hamburger Technology." -Clive James} << %{"A grown man is so secure with himself he will go flip burgers to make sure his baby can eat." -Madea} << %{"Uuummmm, this is a tasty burger!" -Jules} << %{"My brain's the burger and my heart is the charcoal." -Isaac Brock} << %{"I would rather be having a burger and beers with my mates but I can't do that when I know I've got to dance." -Michael Flately} << %{"I met her at Burger King, we fell in love by the soda machine." -The Ramones} << %{"Me burger with I sauce on it, a myself sandwich." -Funkadelic} << %{Hamburger are proof that God loves us and wants us to be happy.} << %{To some its a burger, to me it's a Support Group.} << %{They who eat burger will think burger.}
  end

  config.twitter_auth = TwitterAuth::AuthKeys
end

bot.talk
