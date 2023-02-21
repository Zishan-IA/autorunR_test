library(Microsoft365R)
library(blastula)
library(xtable)



cta_button <-
  add_cta_button(
    url = "https://lookerstudio.google.com/reporting/e707d3e6-b2c2-40a2-94bb-9f29bfc4fa44",
    text = "Check your website audit report"
  )


email <-  compose_email(body = md(c(
  "Hi Client Champion!
        Check out the tag avialibilty summary for you account.","y1",
  
  "page having 404 error ","y2",
  
  
  
  "to know more about it press the button it will take you to your website audit report",
  cta_button
)
),footer = md(
  c(
    "Email sent on ", date_time<-as.character(Sys.Date()), "using R-software."
  )
))
if (interactive()) email
email





#sending mail in outlook 

outl <- get_personal_outlook()
em <- outl$create_email()
em$set_subject("website audit summary for https://www.actcorp.in/")
em$set_body(email, content_type="html")
em$set_recipients(c("zishan.sayyed@interactiveavenues.com"))
#em$add_attachment("p_score_summary.csv")
em$send()
