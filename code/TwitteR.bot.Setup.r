library(RCurl)
library(jsonlite)
library(twitteR)
library(httr)
library(stringr)
library(data.table)

##### Twitter set-up ####
###twitter account parameters
api_key <- "Consumer Key (API Key)"
api_secret <- "Consumer Secret (API Secret)"
access_token <- "Access Token"
access_token_secret <- "Access Token Secret"

setup_twitter_oauth(api_key,api_secret,access_token,access_token_secret)

my.T <- function (term)
{  
	s <- searchTwitter(term, resultType="mixed", n=200,since=as.character(Sys.Date()-1))
  #
  # convert to data frame
  df <- do.call("rbind", lapply(s, as.data.frame))
  ## remove non English tweets
  df$encode <- Encoding(df$text)
  df <- df[df$encode=="unknown",]
  df <- df[is.na(df$replyToSN),]
  df <- df[df$isRetweet==FALSE,]
    ## select tweets
  dt <- subset(df,retweetCount>0 & nchar(df$text)<135)
  text <- dt[sample(nrow(dt), 1),c("text")]
  ## check is there are tweets available and tweet it. 
  if (nrow(dt)!=0){
      tweet(text)
      
  }

	  }


