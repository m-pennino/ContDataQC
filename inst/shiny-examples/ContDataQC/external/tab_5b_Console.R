# Panel, Console

function() {

  tabPanel("Console"
           ,includeHTML("www/RMD_HTML/App_8Console.html")
           ,tableOutput("logText")
           ,tableOutput("logTextUSGS")
           ,tags$b(textOutput("logTextMessage"))

  ) ## tabPanel ~ Adv Feat ~ END
}## FUNCTION ~ END
