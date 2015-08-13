## make loop 
while(TRUE)
{ 
 tryCatch({
## add your term
    my.tweet ("#IoT")
## set time interval between tweets
Sys.sleep(60*20) ## 20 minutes
    my.tweet ("#analytics")
Sys.sleep(60*35)
    my.tweet ("#BigData")
Sys.sleep(60*360)
 
  }, error=function(e){})
 Sys.sleep(60*35)
 
}

