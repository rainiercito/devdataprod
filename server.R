library(shiny) 

IMC<-function(peso,altura) {peso/(altura^2)}

fx_diagnostivo<-function(peso,altura){
  indice<-peso/(altura^2)
  ifelse(indice<18.5,"bajo de peso",ifelse(indice<25,"peso normal",ifelse(indice<30,"sobre peso")))
}

shinyServer(
  function(input, output) {
    
    output$inputpeso <- renderPrint({input$peso})
    output$inputaltura <- renderPrint({input$altura})
    output$estimacion<- renderPrint({IMC(input$peso,input$altura)})
    output$diagnostico <- renderPrint({fx_diagnostivo(input$peso,input$altura)})
  } 
)
