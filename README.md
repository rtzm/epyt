# epyt
Just another aggregating politicians to call while you're in the bathroom website


## User Stories

### How it works:
As a user, I can...

* see a homepage with a list of upcoming votes, bills, and nominations (issues)
* click on a specific issue and see some options: short details about the issue; links to propublica information about the bill (e.g. https://projects.propublica.org/represent/bills/115/hr1180); links to call pages for: someone randomly in favor of or opposed to that issue, etc; info about how many people are calling right now or have called about that issue
* start a call by visiting a call page for a specific congressperson that gives me their information (briefly), a sample script if I need one, and that congressperson's phone number as a button.
* visit a "reflection" page after I call, which will ask me to report on how the call and how the poop went.

### To do:
* Make CSS styling for mobile first, with 12-column framework
* Use Google Civic API to target my local  congressperson about that issue
* Use ruby gem "whenever" and rake task to run the Populator module for:
  * new issues once a day
  * new politicians
* make follow-up notification system when votes have been cast
  * make twilio module that can read in a Followup and send text or email with information about the results of a vote
  * Make SunlightService method able to pull in votes information and send that to Twilio module
  * set chronjob to do this regularly
* deploy to Heroku
* Improve some of the content (sample script, etc) and bring in a little more content area expertise about how votes are scheduled

### Stretches and additional features
* Get more information about the issue from like a NY Times API call
* See a politician's tweets about an issue (politwoops api?), or other examples of their stance
* target polticians based on their stance on the issue (search for an API that might do this)
* Have a poop emoji cursor?
* More robust tracking and data visualization:
  * How many people have made calls while pooping to each politician, or are pooping right now (using long-polling).
  * Past issues people have called about, with saved data on how many people called while pooping, and what the effect of the calls was, if any.
  * Pull this tracking data into the new poop call page so that people can see how effective it will be to call that person--who responds (if anyone) and who doesn't, what have they done since they got those calls, etc--in order to maximize user's toilet time.
* A way for users to submit new issues to the list of issues?


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
