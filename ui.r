library(shiny)
shinyUI(fluidPage(
 titlePanel(h1("Download scatter plot in shiny")),
 sidebarLayout(
   sidebarPanel(
    selectInput("var1","select the x variable",choices = c("sepal.length"=1,"sepal.width"=2,"petal.length"=3,"petal.width"=4)),
    selectInput("var2","select the y variablr",choices = c("sepal.length"=1,"sepal.width"=2,"petal.length"=3,"petal.width"=4)),
    radioButtons("var3","select the file type",choices=list("png","pdf"))),
                 
 mainPanel(
  plotOutput("plot"),
  downloadButton("down","download the plot"),
)    
    
 )

)
)
