# Twitter
Twitter Content Discovery Bot


## Twitter Setup
Create twitter app under your twitter account (https://apps.twitter.com/)
	once the application is set, go to “permission” and make sure you set it to “Read and Write”


## R Script Editing
Downloaded the R code (GitHub)

Open “TwitteR.bot.Setup.r”  using any text editor  and update the keys

	    api_key <- "Consumer Key (API Key)"
    	api_secret <- "Consumer Secret (API Secret)"
		access_token <- "Access Token"
		access_token_secret <- "Access Token Secret"

The information available in the your Twitter app you created under “Key and Access Tokens”.

Open “TwitteR.bot.r” using any text editor set your hash tag search terms  and setup the time interval between tweets.

		## add your term
    		my.tweet ("#bigdata")
		## set time interval between tweets
	        Sys.sleep(60*20) ## 20 minutes
People tend and are recommended to use 2 hashtags in their tweet.
For example,

        #bigdata term can be related also to #finTech or #mobile etc’. 


## Make it Work
* install R https://cran.r-project.org/

* Open Rgui

* Install the following R packages (its a one time thing), just paste it to your R consul. 
	    
	    install.packages("RCurl”)
	    install.packages("jsonlite”)
	    install.packages("twitteR”)
	    install.packages("httr”)
* You need to load “TwitteR.bot.Setup.r” to your working environment, you do that using “source”
for example:

    	source(“C:/Twitter/code/TwitteR.bot.Setup.r”)
    
    Once you source the “TwitteR.bot.Setup.r” you should see this on your screen
	
    	*** NB: by=.EACHI is now explicit. See README to restore previous behaviour.
    	[1] "Using direct authentication"
    	Use a local file to cache OAuth access credentials between R sessions?
    	1: Yes
    	2: No
    
        Type 1 and hit “Enter”

* Now you need to start the bot, you source “TwitteR.bot.r”
    
    	source(“C:/Twitter/code/TwitteR.bot.r”)
	
## You are done, you just created your automated Twitter discovery content.