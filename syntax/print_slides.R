render_and_print_slides <- function(unit){
    current_rmd  <- paste0(paste0(getwd(), "/lectures/"), list.files(paste0(getwd(), "/lectures/"), pattern = ".Rmd$", recursive = TRUE))[unit]
    rmarkdown::render(current_rmd, encoding = "UTF-8")
    current_html <- stringr::str_replace(current_rmd,  "\\.Rmd",  "\\.html")
    new_pdf_file <- stringr::str_replace(current_html, "\\.html", "\\.pdf")
    new_r_script <- stringr::str_replace(current_html, "\\.html", "\\.R")
    message("Slides rendered, waiting 5 seconds.")
    Sys.sleep(5)
    message("Purling slides.")
    knitr::purl(input = current_rmd, output = new_r_script, documentation = 0)
    message("Printing from Chrome.")
    pagedown::chrome_print(current_html, format="pdf")
    message(paste0("Finished rendering ", current_rmd))
}

build_course <- function(lectures = 1:6){
    for(i in lectures){
        render_and_print_slides(i)
    }
}


render_and_print_slides()
build_course(3:6)
