library(shiny) 
shinyUI(
  pageWithSidebar(
    # title
    headerPanel("Calculadora de Indice de Masa Corporal"),
    
    sidebarPanel(
      numericInput('peso', 'Ingrese su peso en kilogramos', 65) ,
      numericInput('altura', 'Ingrese su altura en metros', 1.50, min = 0.2, max = 3, step = 0.01),
      submitButton('enviar')
    ), 
    mainPanel(
      p('El Indice de Masa Corporal (IMC) sirve para medir la cantidad de grasa con bese en la estatura y peso de cada individuo.'),
      p('La Organizacion Mundial de la Salud indica que dependiendo del valor de indice puede un individuo saber si tiene o no sobrepeso.'),
      tags$div(
        tags$ul(
          tags$li('Indice de Masa Corporal <18.5       : Bajo de peso'),
          tags$li('Indice de Masa Corporal             : Normal normal'),
          tags$li('Indice de Masa Corporal [25-29.9]   : Sobrepeso'),
          tags$li('Indice de Masa Corporal >=30        : Obeso')
        )
      ),
      
      h4('Considerando sus medias:'), 
      p('peso:'), verbatimTextOutput("inputpeso"),
      p('altura:'), verbatimTextOutput("inputaltura"),
      h4('Su indice de masa corporal es:'),
      verbatimTextOutput("estimacion"),
      p('cuyo significado es:'),strong(verbatimTextOutput("diagnostico"))
      
      
    )
    
  )   
)
