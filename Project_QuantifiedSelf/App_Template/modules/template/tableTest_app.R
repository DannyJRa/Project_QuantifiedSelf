####Log
#

#module wrapper
#tableTestUI <- function(id) {
ui <- function() {
    #ns <- NS(id)  

    #  tagList(

  #module wrapper

  #comment replace all input input $xxx with ns(input$xxx)
    #ui <-
  #
fluidPage(
  title = "Examples of DataTables",
  sidebarLayout(
    sidebarPanel(
      conditionalPanel(
        'input.dataset === "diamonds"',
        checkboxGroupInput("show_vars", "Columns in diamonds to show:",
                           names(diamonds), selected = names(diamonds))
      ),
      conditionalPanel(
        'input.dataset === "mtcars"',
        helpText("Click the column header to sort a column.")
      ),
      conditionalPanel(
        'input.dataset === "iris"',
        helpText("Display 5 records by default.")
      )
    ),
    mainPanel(
      tabsetPanel(
        id = 'dataset',
        tabPanel("diamonds", DT::dataTableOutput("mytable1")),
        tabPanel("mtcars", DT::dataTableOutput("mytable2")),
        tabPanel("iris", DT::dataTableOutput("mytable3"))
      )
    )
 # )
)




  )
}



#tableTest <- function(input, output, session) {
server <- function(input, output) {

    # choose columns to display
    diamonds2 = diamonds[sample(nrow(diamonds), 1000),]
    output$mytable1 <- DT::renderDataTable({
        DT::datatable(diamonds2[, input$show_vars, drop = FALSE])
    })

    # sorted columns are colored now because CSS are attached to them
    output$mytable2 <- DT::renderDataTable({
        DT::datatable(mtcars, options = list(orderClasses = TRUE))
    })

    # customize the length drop-down menu; display 5 rows per page by default
    output$mytable3 <- DT::renderDataTable({
        DT::datatable(iris, options = list(lengthMenu = c(5, 30, 50), pageLength = 5))
    })

}


#comment
shinyApp(ui, server)