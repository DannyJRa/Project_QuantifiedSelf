print("loading app...")




source("global/dependencies.R")
source("ui/header.R")
source("ui/sidebar.R")



# utils functions
#sourceDir("global/futures-data", trace = FALSE)


# init db
#db <- Db$new()$singleton$init(localf="local/contracts_data.sqlite", portablef="portable.sqlite")

# loading modules 
sourceDir("modules", trace = FALSE)



#source("server/server.R", local = T)

