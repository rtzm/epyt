# epyt
Just another aggregating politicians to call while you're in the bathroom website


## User Stories

### MVP
As a user, I want to...

* see a homepage with a list of upcoming votes, bills, and nominations (issues)
* click on a specific issue and see some options: short details about the issue; links to propublica information about the bill (e.g. https://projects.propublica.org/represent/bills/115/hr1180); links to call pages for: someone randomly in favor of or opposed to that issue, or your local congressperson about that issue; info about how many people are calling right now or have called about that issue
* start a call by visiting a call page for a specific congressperson that gives me their information (briefly), a sample script if I need one, and that congressperson's phone number as a button.
* visit a "reflection" page after I call, which will ask me to report on how the call and how the poop went.

### Stretch stories
As a user, I want to...

* Get a link for more information about the issue (external, or maybe from an API call), about a specific issue on the issue page
* See a politician's tweets about an issue, or other examples of their stance
* target polticians based on their stance.

* I want my cursor to be a poop emoki

* use ruby gem "whenever" and rake task to run once a day to get updated issues and politicians and votes
  * put code in class or module, then put that into a rake task, then feed that into whenever
* add twelve-column css framework for mobile

## APIs to use

### Core APIs

Google Civic Information API - find local, state, and federal politicians for a specific location
https://developers.google.com/civic-information/

ProPublica Congress API (formerly Sunlight) - find upcoming bills, nominations
https://propublica.github.io/congress-api-docs
https://www.propublica.org/about/propublica-data-terms-of-use

### Stretch APIs

Twilio - Notify user when that politician actually votes and sends user a text, or text friends that you just called someone while in the bathroom.

????? - find an api that can help with targeting a specific politician by finding who is flippable

ProPublica Campaign Cash - find related campaign contributions for a politician when they were a candidate
https://github.com/propublica/campaign_cash

#### NLP-dependent apis
nytimes api - find more info and headlines about a given topic or vote
http://developer.nytimes.com/

Politwoops - ProPublica Api for finding tweets by politicians that might match this issue
https://github.com/propublica/politwoops

## to-do
play with api in command line
once working, wrap in a module (service module)
* make a first release that features nominations, votes, and issues to call about at the federal level, and allows people to quickly call those people.
  * pull in list of nominations, votes, and issues to call about using ProPublica Congress API or Sunlight Congress API?
  * pul in content about that issue for people to peruse easily
  * figure out the most user friendly way to link people to their politicians
    * location-based?
    * automatically provides the phone numbers for who you can call (building from Sunlight's Congress API: https://sunlightlabs.github.io/congress/)
  * allow users to rate the call and the poop
  * after the call is over, the user is directed to a reporting feature with a quick form to ask how the call went

## Other potential site features:
* show how many people have made calls while pooping to each politician, or are pooping right now (long-polling).
* A way for users to submit new issues to the list of issues?
* A tracking page that shows past issues people have called about, with saved data on how many people called while pooping, and what the effect of the calls was, if any.
  * This tracking would also ideally feed into the "more info about an issue" page that people call from, so that people can see how effective it will be to call that person--who responds (if anyone) and who doesn't, what have they done since they got those calls, etc--in order to maximize your sessions.
