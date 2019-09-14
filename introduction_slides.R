## ----Coding 1, eval=FALSE------------------------------------------------
## > (11-2
## +


## ----Calc 1--------------------------------------------------------------
123 + 456 + 789


## ----Calc 2--------------------------------------------------------------
sqrt(400)


## ----Help, eval=FALSE----------------------------------------------------
## ?sqrt


## ----Objects 1-----------------------------------------------------------
new.object <- 144


## ----Objects 2-----------------------------------------------------------
new.object


## ----Objects 3-----------------------------------------------------------
new.object + 10
new.object + new.object
sqrt(new.object)


## ----Vectors 1-----------------------------------------------------------
new.object <- c(4, 9, 16, 25, 36)
new.object


## ----Vectors 2-----------------------------------------------------------
sqrt(new.object)


## ------------------------------------------------------------------------
string.vector <- c("Atlantic", "Pacific", "Arctic")
string.vector


## ------------------------------------------------------------------------
factor.vector <- factor(string.vector)
factor.vector


## ------------------------------------------------------------------------
save(new.object, file="new_object.RData")


## ------------------------------------------------------------------------
load("new_object.RData")


## ------------------------------------------------------------------------
getwd()


## ---- eval=FALSE---------------------------------------------------------
## setwd("C:/Users/cclan/Documents")


## ---- eval=FALSE---------------------------------------------------------
## new_df <- read.csv("some_spreadsheet.csv", stringsAsFactors = FALSE)


## ---- eval=FALSE---------------------------------------------------------
## install.packages("tidyverse")


## ---- eval=FALSE---------------------------------------------------------
## install.packages("gapminder")
## install.packages("nycflights13")


## ------------------------------------------------------------------------
library(gapminder)


## ------------------------------------------------------------------------
data(gapminder) # Places data in your global environment
head(gapminder) # Displays first six elements of an object


## ------------------------------------------------------------------------
gapminder[1,] # First row


## ------------------------------------------------------------------------
gapminder[1:3, 3:4] # First three rows, third and fourth column #<<


## ------------------------------------------------------------------------
gapminder$gdpPercap[1:10]


## ------------------------------------------------------------------------
gapminder[gapminder$year==1952, ]


## ------------------------------------------------------------------------
head(gapminder$year==1952, 50) # display first 50 elements


## ------------------------------------------------------------------------
vector_w_missing <- c(1, 2, NA, 4, 5, 6, NA)


## ------------------------------------------------------------------------
mean(vector_w_missing)
mean(vector_w_missing, na.rm=TRUE)


## ------------------------------------------------------------------------
vector_w_missing == NA


## ------------------------------------------------------------------------
is.na(vector_w_missing)


## ------------------------------------------------------------------------
mean(vector_w_missing[!is.na(vector_w_missing)]) #<<


## ---- message=FALSE, warning=FALSE---------------------------------------
library(dplyr)
gapminder %>% filter(country == "Canada") %>% head(2)


## ---- eval=FALSE---------------------------------------------------------
## take_this_data %>%
##     do_first_thing(with = this_value) %>%
##     do_next_thing(using = that_value) %>% ...


## ---- eval=FALSE---------------------------------------------------------
## gapminder %>% lm(pop ~ year, data = .)


## ---- eval=FALSE---------------------------------------------------------
## lm_pop_year <- gapminder %>%
##   lm(pop ~ year, data = .)


## ------------------------------------------------------------------------
gapminder %>% filter(country == "Oman") %>% head(8)


## ------------------------------------------------------------------------
gapminder %>%
    filter(country == "Oman" &
           year > 1980 &
           year <= 2000 )


## ------------------------------------------------------------------------
former_yugoslavia <- c("Bosnia and Herzegovina", "Croatia", #<<
              "Macedonia", "Montenegro", "Serbia", "Slovenia") #<<
yugoslavia <- gapminder %>% filter(country %in% former_yugoslavia)
tail(yugoslavia, 2)


## ------------------------------------------------------------------------
yugoslavia %>% arrange(year, desc(pop))


## ------------------------------------------------------------------------
yugoslavia %>% select(country, year, pop) %>% head(4)


## ------------------------------------------------------------------------
yugoslavia %>% select(-continent, -pop, -lifeExp) %>% head(4)


## ---- eval=FALSE---------------------------------------------------------
## DYS %>% select(starts_with("married"))
## DYS %>% select(ends_with("18"))


## ------------------------------------------------------------------------
yugoslavia %>%
    select(Life_Expectancy = lifeExp) %>%
    head(4)


## ------------------------------------------------------------------------
yugoslavia %>%
    select(country, year, lifeExp) %>%
    rename(Life_Expectancy = lifeExp) %>%
    head(4)


## ------------------------------------------------------------------------
yugoslavia %>% filter(country == "Serbia") %>%
    select(year, pop, lifeExp) %>%
    mutate(pop_million = pop / 1000000, #<<
           life_exp_past_40 = lifeExp - 40) %>% #<<
    head(5)


## ---- eval=FALSE---------------------------------------------------------
## ifelse(test = x==y, yes = first_value , no = second_value)


## ------------------------------------------------------------------------
example <- c(1, 0, NA, -2)
ifelse(example > 0, "Positive", "Not Positive")


## ------------------------------------------------------------------------
yugoslavia %>% mutate(short_country = 
                 ifelse(country == "Bosnia and Herzegovina", 
                        "B and H", as.character(country))) %>%
    select(short_country, year, pop) %>%
    arrange(year, short_country) %>%
    head(3)


## ------------------------------------------------------------------------
gapminder %>% 
  mutate(gdpPercap_ordinal = 
    case_when(
      gdpPercap <  700 ~ "low",
      gdpPercap >= 700 & gdpPercap < 800 ~ "moderate",
      TRUE ~ "high" )) %>% # Value when all other statements are FALSE
  slice(6:9) # get rows 6 through 9


## ---- out.height="320px"-------------------------------------------------
hist(gapminder$lifeExp,
     xlab = "Life Expectancy (years)", #<<
     main = "Observed Life Expectancies of Countries") #<<


## ---- out.height="320px"-------------------------------------------------
plot(lifeExp ~ gdpPercap, data = gapminder, #<<
     xlab = "ln(GDP per Capita)",
     ylab = "Life Expectancy (years)",
     main = "Life Expectancy and log GDP per Capita",
     pch = 16, log="x") # log="x" sets x axis to log scale!
abline(h = mean(gapminder$lifeExp), col = "firebrick") #<<
abline(v = mean(gapminder$gdpPercap), col = "cornflowerblue") #<<


## ------------------------------------------------------------------------
new_formula <- y ~ x1 + x2 + x3
new_formula
class(new_formula)


## ------------------------------------------------------------------------
table(mtcars$cyl, mtcars$am)


## ------------------------------------------------------------------------
chisq.test(table(mtcars$cyl, mtcars$am))


## ------------------------------------------------------------------------
gapminder$post_1980 <- ifelse(gapminder$year > 1980, 1, 2)
t.test(lifeExp ~ post_1980, data=gapminder)


## ------------------------------------------------------------------------
lm(lifeExp~pop + gdpPercap + year + continent, data=gapminder)


## ------------------------------------------------------------------------
lm_out <- lm(lifeExp~pop + gdpPercap + year + continent, data=gapminder)
summary(lm_out)


## ---- eval=FALSE---------------------------------------------------------
## str(lm_out)


## ---- echo=FALSE---------------------------------------------------------
str(lm_out, list.len=7, max.level=2) # list.len is used to 


## ------------------------------------------------------------------------
lm_out$coefficients


## ------------------------------------------------------------------------
summary(lm_out)$coefficients


## ------------------------------------------------------------------------
summary(aov(lifeExp ~ continent, data=gapminder))

