# encoding: UTF-8
load 'twitter_auth.rb'
require 'tweetbot'

bot = TweetBot.configure do |config|
  config.response_frequency = 0

  config.respond_to_phrase "burger" do |responses|
    responses << %{"Sacred cows make the best hamburger." -Mark Twain} << %{"It requires a certain kind of mind to see beauty in a hamburger bun." -Ray Kroc} << %{"The journey of a thousand pounds begins with a single burger." -Chris O'Brien} << %{"A Hamburger is warm and fragrant and juicy. A hamburger is soft and nonthreatening." -Tom Robbins} << %{"Rock and roll is the hamburger that ate the world." -Peter York} << %{"Uuummmm, this is a tasty burger!" -Jules} << %{"My brain's the burger and my heart is the charcoal." -Isaac Brock} << %{"I would rather be having a burger and beers with my mates but I can't do that when I know I've got to dance." -Michael Flately} << %{"I met her at Burger King, we fell in love by the soda machine." -The Ramones} << %{"Me burger with I sauce on it, a myself sandwich." -Funkadelic} << %{Hamburger are proof that God loves us and wants us to be happy.} << %{To some its a burger, to me it's a Support Group.} << %{They who eat burger will think burger.} << %{Can a hamburger marry a hot dog? Only if they have a very frank relationship!} << %{Can you name two burgers who are royalty? Sir Loin and Burger King!} << %{How did the jury find the hamburger? Grill-ty as charred!} << %{How do the Rolling Stones like their burgers? Plain – Rolling Stones gather no moss-tard!} << %{How do you insult a hamburger patty? Call it a meatball!} << %{How do you make a hamburger smile? Pickle it gently!} << %{How far do burgers go in school? Through cowlege (then they get their 450 degrees!)} << %{What did the hamburger say when it pleaded not guilty ? I’ve been flamed!} << %{"You can find your way across this country using burger joints the way a navigator uses stars." -Charles Kuralt} << %{Here's my heart and soul, please grind them into a hamburger, and enjoy. -Meredith Grey} << %{"Tucking into a hamburger and fries is perfectly fine as a treat, as part of a balanced, active lifestyle." -Sharron Davies}  << %{"I worked min wage my first job, and I got a raise when I memorized what goes on a hamburger" -Mike Spence}

  end

  config.twitter_auth = TwitterAuth::AuthKeys
end

bot.talk
