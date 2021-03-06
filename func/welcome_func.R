# sourced by "welcome_server.R"

fn_welcome_msg <- function() {
  column(
    width = 12, offset = 0,
    shiny::tags$h1("GSEXPR offers you a web-based platform for gene, protein or miRNA expression")
  )
}

# introduction ------------------------------------------------------------

fn_introduction <- function() {
  column(
    width = 12, offset = 0,
    shinydashboard::box(
      width = 12,
      status = "primary",
      solidHeader = TRUE,
      title="This is introduction of GSEXPR"
    )
  )
}

# analysis ----------------------------------------------------------------

fn_analysis <-  function(){
  shiny::fluidRow(
  column(
    width =12, offset = 0,
        shinydashboard::tabBox(
          title = "",id = "tabset1", height = "140px",width=12,
          tabPanel("mRNA", 
                  shiny::uiOutput(outputId = "ui_panel_mRNA"),
                  shiny::uiOutput(outputId = "ui_multi_cancer_input"),
                  shiny::uiOutput(outputId = "ui_mRNA_stat")
                  ),
          tabPanel("protein", 
                  shiny::uiOutput(outputId = "ui_panel_protein"),
                  shiny::uiOutput(outputId = "ui_protein_select"),
                  shiny::uiOutput(outputId = "ui_protein_stat")
          ),
          tabPanel("miRNA", 
                  shiny::uiOutput(outputId = "ui_panel_miRNA"),
                  shiny::uiOutput(outputId = "ui_miRNA_select"),
                  shiny::uiOutput(outputId = "ui_miRNA_stat")
          )
        )
  ))
}

# Gene set stat -----------------------------------------------------------
fn_gene_set_stat <- function(input_list_check){
  column(
    width = 8, offset = 2, style = "margin-top:20px",
    downloadLink(
      outputId = "download_total_gene_set", label = NULL, class = NULL,
      valueBox(value = input_list_check$n_total, subtitle = "Total Input Genes", icon = icon("users"), color = "yellow")
    ),
    
    downloadLink(
      outputId = "download_valid_gene_set", label = NULL, class = NULL,
      valueBox(
        value = input_list_check$n_match, subtitle = "Valid Genes", icon = icon("credit-card"),color = "green")
    ),
    downloadLink(
      outputId = "download_input_logs", label = NULL, class = NULL,
      valueBox(
        value = input_list_check$n_non_match, subtitle = "Invalid Genes",icon = icon("line-chart"), color = "red")
    )
  )
}

# figure ------------------------------------------------------------------

fn_feature_figure <- function(){
  column(
    width=12,offset=0,
    shinydashboard::box(
      title = "This is figure",
      width = 12,
      solidHeader = TRUE,
      status = "primary"
    )
  )
}
