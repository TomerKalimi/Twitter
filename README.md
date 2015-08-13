# Twitter
Twitter bot with R

###Step 1 - create twitter app under your twitter account (https://apps.twitter.com/)
once the application is set, go to “permission” and make sure you set it to “Read and Write”
###Step 2 - downloaded the R code (GitHub)
###Step 3 -  Open “TwitteR.bot.Setup.r” file and update the keys
api_key <- "Consumer Key (API Key)"
api_secret <- "Consumer Secret (API Secret)"
access_token <- "Access Token"
access_token_secret <- "Access Token Secret"

* The information is available in the Twitter app that you created in step 1 under “Key and Access Tokens”  TAB.

###Step 4 - Open “TwitteR.bot.r” to your hashtag search terms  and you can setup the time interval between tweets.
--add your term
    my.tweet ("#bigdata")
--set time interval between tweets
Sys.sleep(60*20) ## 20 minutes
 

## How to run the script:
 install R https://cran.r-project.org/
Open Rgui 
install the following r packages
install.packages("RCurl”)
install.packages("jsonlite”)
install.packages("twitteR”)
install.packages("httr”)

you need to load “TwitteR.bot.Setup.r” to your working environment, you do that using “source”
for example:
source(“C:/Twitter/code/TwitteR.bot.Setup.r”)
once you source the “TwitteR.bot.Setup.r” you should see this on your screen
*** NB: by=.EACHI is now explicit. See README to restore previous behaviour.
[1] "Using direct authentication"
Use a local file to cache OAuth access credentials between R sessions?
1: Yes
2: No
Type 1 and “enter”

now you need to start the bot, you source “TwitteR.bot.r”  like this
	source(“C:/Twitter/code/TwitteR.bot.r”)
