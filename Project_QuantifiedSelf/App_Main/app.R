source("global/global.R")

#### LOGGIN Information########################
#Logged = FALSE
#my_username <- ""
#my_password <- ""
############################


ui <- dashboardPage(skin='blue',
       
                    ## Header
                    header,
                    
                    ## Sidebar content
                    sidebar,
                    
  ## Body content
  dashboardBody(
    tabItems(
      # Login tab
      tabItem(tabName = "login")

,
      
      tabItem(tabName = "summary",

      ################################ Show boxes
      tags$head(
              tags$link(rel = "stylesheet", type = "text/css", href = "css/boxes.css")
      ),
      source("columns.R", local = T)$value  #add value other TRUE will be displayed
      ####################################


                


      ),
      
      # First tab content
      tabItem(tabName = "dashboard"

    
      )   
    )
    #close body
  )
                    
                    
                    
#close ui                
)




server = function(input, output,session) {

##### load server ###############
#source("server/server.R", local = T)
    
    
#### Password modal box #######
#source("server/password.R", local = T)
################################  
  
  
  
  
  
###############################################  
##########Save input to rds#########
    ###Save Input if changes
    #Source: http://www.programfaqs.com/faq/reactive-variables-and-input-in-r-shiny-save-everything-but-not-every-time/
  #   observeEvent(reactiveValuesToList(input),
  #   {
  # 
  #       lapply(names(reactiveValuesToList(input)), function(item)
  #       {
  #           saveRDS(input[[item]],paste("test",item,"rds",sep = "."))
  #       })
  # 
  #   }
  # 
  # )
  ######################################
  ######################################



  




 
#### end server   
}

shinyApp(ui,server)