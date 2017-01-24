# epyt
Just another aggregating politicians to call while you're in the bathroom website

## to-do
* make a first release that features a couple of key nominations, votes, and issues to call about at the federal level, and allows people to quickly call those people.
  * figure out data structure for holding these
  * gather a list of nominations, votes, and issues to call about
  * figure out the easiest (for users) way to link people to their politicians
    * direct to this webpage:http://act.commoncause.org/site/PageServer?pagename=sunlight_advocacy_list_page?
    * Pull in from another using the Sunlight Congress API?
  * write up some copy and frontmatter for the site, poop-themed.
  * make it into a nice basic website with these pages:
    * front page (currently poopcall.md) to get people calling
    * issue submission page (currently issuesubmit.md) to gather more issues for people to call about
* send it around, get feedback, input, get more issues people can call about, etc
* Make a new version that implements other features (below)

## Websites that have lists of issues to call about to initialize a prototype of the site:

http://jenniferhofmann.com/home/weekly-action-checklist-democrats-independents-republicans-conscience/

http://www.weekly-resistance.online/

http://thesixtyfive.org/weeklyCTA


## Other Potential site features:
* basically weekly-resistance.online but better and poop-themed.
* show how many people have made calls while pooping, or are pooping right now.
* automatically provides the phone numbers for who you can call (building from Sunlight's Congress API: https://sunlightlabs.github.io/congress/)
* after the call is over, the user is directed to a reporting feature with a quick form to ask how the call went
* A way for users to submit new issues to the list of issues.
  * now issuesubmit.md
* A tracking page that shows past issues people have called about, with saved data on how many people called while pooping, and what the effect of the calls was, if any.
  * This tracking would also ideally feed into the "more info about an issue" page that people call from, so that people can see how effective it will be to call that person--who responds (if anyone) and who doesn't, what have they done since they got those calls, etc--in order to maximize your sessions.
