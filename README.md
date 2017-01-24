# epyt
Just another aggregating politicians to call while you're in the bathroom website

## goals/to-do
* make a first release that features a couple of key nominations, votes, and issues to call about at the federal level, and allows people to quickly call those people.
  * gather a list of nominations, votes, and issues to call about
  * figure out the easiest (for users) way to link people to their politicians
    * direct to this webpage:http://act.commoncause.org/site/PageServer?pagename=sunlight_advocacy_list_page?
    * Pull in from another using the Sunlight Congress API?
  * write up some copy and frontmatter for the site, poop-themed.
  * make it into a nice website
* send it around, get feedback, input, get more issues people can call about, etc
* Make a new version that implements other features (below)

## List of initial nominations, votes, and issues to call about for the first version of the site.

Find a website that already has some of this info compiled and pull some inital actions steps from that site.
* Besty DeVos
* Rex Tillerson
* ... more to come ...

## Other Potential site features:
* front page is an aggregated list of current outrages going on today, designed specifically for mobile
  * click on one and it brings you to a page that shows more information about that issue, how many people have called or are calling right now, and automatically provides the phone numbers for who you can call (building from Sunlight's Congress API: https://sunlightlabs.github.io/congress/)
  * after the call is over, the user is directed to a reporting feature with a quick form to ask how the call went
* A way for users to submit new issues to the list of issues.
  * _would this require logins? ideally no, but then creates issue of curating and automating this process_
* A tracking page that shows past issues people have called about, with saved data on how many people called while pooping, and what the effect of the calls was, if any.
  * This tracking would also ideally feed into the "more info about an issue" page that people call from, so that people can see how effective it will be to call that person--who responds (if anyone) and who doesn't, what have they done since they got those calls, etc--in order to maximize your sessions.
