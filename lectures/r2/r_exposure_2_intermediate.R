library(gapminder)
library(dplyr)
China <- gapminder %>%
  filter(country == "China")
head(China, 4)

## plot(lifeExp ~ year,
##      data = China,
##      xlab = "Year",
##      ylab = "Life expectancy",
##      main = "Life expectancy in China",
##      col = "red",
##      cex.lab = 1.5,
##      cex.main= 1.5,
##      pch = 16)

plot(lifeExp ~ year, 
     data = China, 
     xlab = "Year", 
     ylab = "Life expectancy",
     main = "Life expectancy in China", 
     col = "red", 
     cex.lab = 1.5,
     cex.main= 1.5,
     pch = 16)

library(ggplot2)

## ggplot(data = China,
##        aes(x = year, y = lifeExp)) +
##     geom_point()

ggplot(data = China, aes(x = year, y = lifeExp)) +
    geom_point()

## ggplot(data = China,  #<<
##        aes(x = year, y = lifeExp)) #<<

ggplot(data = China,  
       aes(x = year, y = lifeExp)) 

## ggplot(data = China,
##        aes(x = year, y = lifeExp)) +
##   geom_point() #<<

ggplot(data = China, 
       aes(x = year, y = lifeExp)) +
  geom_point() 

## ggplot(data = China,
##        aes(x = year, y = lifeExp)) +
##   geom_point(color = "red", size = 3) #<<

ggplot(data = China, 
       aes(x = year, y = lifeExp)) +
  geom_point(color = "red", size = 3) 

## ggplot(data = China,
##        aes(x = year, y = lifeExp)) +
##   geom_point(color = "red", size = 3) +
##   xlab("Year") #<<

ggplot(data = China, 
       aes(x = year, y = lifeExp)) +
  geom_point(color = "red", size = 3) +
  xlab("Year") 

## ggplot(data = China,
##        aes(x = year, y = lifeExp)) +
##   geom_point(color = "red", size = 3) +
##   xlab("Year") +
##   ylab("Life expectancy") #<<

ggplot(data = China, 
       aes(x = year, y = lifeExp)) +
  geom_point(color = "red", size = 3) +
  xlab("Year") + 
  ylab("Life expectancy")

## ggplot(data = China,
##        aes(x = year, y = lifeExp)) +
##   geom_point(color = "red", size = 3) +
##   xlab("Year") +
##   ylab("Life expectancy") +
##   ggtitle("Life expectancy in China") #<<

ggplot(data = China, 
       aes(x = year, y = lifeExp)) +
  geom_point(color = "red", size = 3) +
  xlab("Year") + 
  ylab("Life expectancy") +
  ggtitle("Life expectancy in China")

## ggplot(data = China,
##        aes(x = year, y = lifeExp)) +
##   geom_point(color = "red", size = 3) +
##   xlab("Year") +
##   ylab("Life expectancy") +
##   ggtitle("Life expectancy in China") +
##   theme_bw() #<<

ggplot(data = China, 
       aes(x = year, y = lifeExp)) +
  geom_point(color = "red", size = 3) +
  xlab("Year") + 
  ylab("Life expectancy") +
  ggtitle("Life expectancy in China") +
  theme_bw() #<<

## ggplot(data = China,
##        aes(x = year, y = lifeExp)) +
##   geom_point(color = "red", size = 3) +
##   xlab("Year") +
##   ylab("Life expectancy") +
##   ggtitle("Life expectancy in China") +
##   theme_bw(base_size=18) #<<

ggplot(data = China, 
       aes(x = year, y = lifeExp)) +
  geom_point(color = "red", size = 3) +
  xlab("Year") + 
  ylab("Life expectancy") +
  ggtitle("Life expectancy in China") +
  theme_bw(base_size=18) #<<

## ggplot(data = gapminder,#<<
##        aes(x = year, y = lifeExp)) +
##   geom_point(color = "red", size = 3) +
##   xlab("Year") +
##   ylab("Life expectancy") +
##   ggtitle("Life expectancy over time") +
##   theme_bw(base_size=18)

ggplot(data = gapminder, #<<
       aes(x = year, y = lifeExp)) +
  geom_point(color = "red", size = 3) +
  xlab("Year") + 
  ylab("Life expectancy") +
  ggtitle("Life expectancy over time") +
  theme_bw(base_size=18)

## ggplot(data = gapminder,
##        aes(x = year, y = lifeExp)) +
##   geom_line(color = "red", size = 3) + #<<
##   xlab("Year") +
##   ylab("Life expectancy") +
##   ggtitle("Life expectancy over time") +
##   theme_bw(base_size=18)

ggplot(data = gapminder, 
       aes(x = year, y = lifeExp)) +
  geom_line(color = "red", size = 3) + #<<
  xlab("Year") + 
  ylab("Life expectancy") +
  ggtitle("Life expectancy over time") +
  theme_bw(base_size=18)

## ggplot(data = gapminder,
##        aes(x = year, y = lifeExp,
##            group = country)) + #<<
##   geom_line(color = "red", size = 3) +
##   xlab("Year") +
##   ylab("Life expectancy") +
##   ggtitle("Life expectancy over time") +
##   theme_bw(base_size=18)

ggplot(data = gapminder, 
       aes(x = year, y = lifeExp, 
           group = country)) + #<<
  geom_line(color = "red", size = 3) +
  xlab("Year") + 
  ylab("Life expectancy") +
  ggtitle("Life expectancy over time") +
  theme_bw(base_size=18)

## ggplot(data = gapminder,
##        aes(x = year, y = lifeExp,
##            group = country)) +
##   geom_line(color = "red") + #<<
##   xlab("Year") +
##   ylab("Life expectancy") +
##   ggtitle("Life expectancy over time") +
##   theme_bw(base_size=18)

ggplot(data = gapminder, 
       aes(x = year, y = lifeExp, 
           group = country)) +
  geom_line(color = "red") + #<<
  xlab("Year") + 
  ylab("Life expectancy") +
  ggtitle("Life expectancy over time") +
  theme_bw(base_size=18)

## ggplot(data = gapminder,
##        aes(x = year, y = lifeExp,
##            group = country,
##            color = continent)) + #<<
##   geom_line() + #<<
##   xlab("Year") +
##   ylab("Life expectancy") +
##   ggtitle("Life expectancy over time") +
##   theme_bw(base_size=18)

ggplot(data = gapminder, 
       aes(x = year, y = lifeExp, 
           group = country, 
           color = continent)) + #<<
  geom_line() + #<<
  xlab("Year") + 
  ylab("Life expectancy") +
  ggtitle("Life expectancy over time") +
  theme_bw(base_size=18) #<<

## ggplot(data = gapminder,
##        aes(x = year, y = lifeExp,
##            group = country,
##            color = continent)) +
##   geom_line() +
##   xlab("Year") +
##   ylab("Life expectancy") +
##   ggtitle("Life expectancy over time") +
##   theme_bw(base_size=18) +
##   facet_wrap(~ continent) #<<

ggplot(data = gapminder, 
       aes(x = year, y = lifeExp, 
           group = country, 
           color = continent)) +
  geom_line() +
  xlab("Year") + 
  ylab("Life expectancy") +
  ggtitle("Life expectancy over time") +
  theme_bw(base_size=18) +
  facet_wrap(~ continent) #<<

## ggplot(data = gapminder,
##        aes(x = year, y = lifeExp,
##            group = country,
##            color = continent)) +
##   geom_line() +
##   xlab("Year") +
##   ylab("Life expectancy") +
##   ggtitle("Life expectancy over time") +
##   theme_bw() +  #<<
##   facet_wrap(~ continent)

ggplot(data = gapminder, 
       aes(x = year, y = lifeExp, 
           group = country, 
           color = continent)) +
  geom_line() +
  xlab("Year") + 
  ylab("Life expectancy") +
  ggtitle("Life expectancy over time") +
  theme_bw() + #<<
  facet_wrap(~ continent)

## ggplot(data = gapminder,
##        aes(x = year, y = lifeExp,
##            group = country,
##            color = continent)) +
##   geom_line() +
##   xlab("Year") +
##   ylab("Life expectancy") +
##   ggtitle("Life expectancy over time") +
##   theme_bw() +
##   facet_wrap(~ continent) +
##   theme(legend.position = c(0.8, 0.25)) #<<

ggplot(data = gapminder, 
       aes(x = year, y = lifeExp, 
           group = country, 
           color = continent)) +
  geom_line() +
  xlab("Year") + 
  ylab("Life expectancy") +
  ggtitle("Life expectancy over time") +
  theme_bw() + 
  facet_wrap(~ continent) +
  theme(legend.position = c(0.8, 0.25)) #<<

## ggplot(data = gapminder,
##        aes(x = year, y = lifeExp,
##            group = country,
##            color = continent)) +
##   geom_line() +
##   xlab("Year") +
##   ylab("Life expectancy") +
##   ggtitle("Life expectancy over time") +
##   theme_bw() +
##   facet_wrap(~ continent) +
##   theme(legend.position = "none") #<<

ggplot(data = gapminder, 
       aes(x = year, y = lifeExp, 
           group = country, 
           color = continent)) +
  geom_line() +
  xlab("Year") + 
  ylab("Life expectancy") +
  ggtitle("Life expectancy over time") +
  theme_bw() + 
  facet_wrap(~ continent) +
  theme(legend.position = "none") #<<

lifeExp_by_year <- 
  ggplot(data = gapminder, 
       aes(x = year, y = lifeExp, 
           group = country, 
           color = continent)) +
  geom_line() +
  xlab("Year") + 
  ylab("Life expectancy") +
  ggtitle("Life expectancy over time") +
  theme_bw() + 
  facet_wrap(~ continent) +
  theme(legend.position = "none")

lifeExp_by_year

lifeExp_by_year +
    theme(legend.position = "bottom")

ggplot(data = China, aes(x = year, y = gdpPercap)) +
    geom_line() +
    scale_y_log10(breaks = c(1000, 2000, 3000, 4000, 5000), #<<
                  labels = scales::dollar) + #<<
    xlim(1940, 2010) + ggtitle("Chinese GDP per capita")

## ggsave("I_saved_a_file.pdf", plot = lifeExp_by_year,
##        height = 3, width = 5, units = "in")

## ggplot(estimated_pes, aes(x = Target, y = PE, group = Reporter)) +
##   facet_grid(`Crime Type` ~ Neighborhood) +
##   geom_errorbar(aes(ymin = LB, ymax = UB),
##                 position = position_dodge(width = .4), size = 0.75, width = 0.15) +
##   geom_point(shape = 21, position = position_dodge(width = .4),
##              size = 2, aes(fill = Reporter)) +
##   scale_fill_manual("Reporter",
##                     values = c("Any White" = "white", "All Black" = "black")) +
##   ggtitle("Figure 3. Probability of Arrest",
##           subtitle = "by Reporter and Target Race, Neighborhood and Crime Type") +
##   xlab("Race of Target") + ylab("Estimated Probability") +
##   theme_bw() + theme(legend.position = c(0.86, 0.15),
##                      legend.background = element_rect(color = 1))

yugoslavia <- gapminder %>% filter(country %in% c("Bosnia and Herzegovina",
               "Croatia", "Macedonia", "Montenegro", "Serbia", "Slovenia"))

yugoslavia %>% filter(year == 1982) %>%
    summarize(n_obs = n(),
              total_pop = sum(pop),
              mean_life_exp = mean(lifeExp),
              range_life_exp = max(lifeExp) - min(lifeExp))

yugoslavia %>%
  filter(year == 1982) %>%
  summarize(across(c(lifeExp, pop), list(avg = ~mean(.), sd = ~sd(.))))

## yugoslavia %>%
##   filter(year == 1982) %>%
##   summarize(
##     across(
##       c(lifeExp, pop),
##       list(
##         avg = ~mean(.),
##         sd = ~sd(.)
##       )
##     )
##   )

## dataframe %>%
##   summarize(across(everything(), list(mean = ~mean(.), sd = ~sd(.))))

## dataframe %>%
##   summarize(across(where(is.numeric), list(mean = ~mean(.), sd = ~sd(.))))

yugoslavia %>%
  group_by(year) %>% #<<
    summarize(total_pop = sum(pop),
              total_gdp_per_cap = sum(pop*gdpPercap)/total_pop) %>%
    head(5)

yugoslavia %>% 
  select(country, year, pop) %>%
  filter(year >= 2002) %>% 
  group_by(country) %>%
  mutate(lag_pop = lag(pop, order_by = year),
         pop_chg = pop - lag_pop) %>%
  head(4)

## library(readr) # Contains read_csv()
## billboard_cols <- paste(c("icccD", rep("i", 76)), collapse="")
## billboard_2000_raw <-
##   read_csv(file = "https://github.com/clanfear/Intermediate_R_Workshop/raw/master/data/billboard.csv",
##            col_types = billboard_cols) #<<
## billboard_cols

# This hidden chunk loads the data locally so I don't need to keep downloading it.
# The above one will run if you don't have the data locally
library(readr) # Contains read_csv()
billboard_cols <- paste(c("icccD", rep("i", 76)), collapse="")
billboard_2000_raw <- 
  read_csv(file = "../../data/billboard.csv",
           col_types = billboard_cols) #<<
billboard_cols

library(pander)
pander(head(billboard_2000_raw[,1:10], 12), split.tables=120, style="rmarkdown")

library(tidyr)
billboard_2000 <- billboard_2000_raw %>%
  pivot_longer(starts_with("wk"), 
               names_to ="week", #<<
               values_to = "rank") #<<
dim(billboard_2000)

head(billboard_2000)

summary(billboard_2000$rank)

billboard_2000 <- billboard_2000_raw %>%
  pivot_longer(starts_with("wk"), 
               names_to ="week", 
               values_to = "rank", 
               values_drop_na = TRUE) #<<
summary(billboard_2000$rank)

dim(billboard_2000)

summary(billboard_2000$week)

billboard_2000 <- billboard_2000 %>%
    mutate(week = parse_number(week)) #<<
summary(billboard_2000$week)

billboard_2000 <- billboard_2000_raw %>%
  pivot_longer(starts_with("wk"), 
               names_to ="week", 
               values_to = "rank",
               values_drop_na = TRUE,
               names_prefix = "wk", #<<
               names_transform = list(week = as.integer))  #<<
head(billboard_2000, 3)

billboard_2000 <- billboard_2000 %>%
    separate(time, into = c("minutes", "seconds"),
             sep = ":", convert = TRUE) %>% #<<
    mutate(length = minutes + seconds / 60) %>%
    select(-minutes, -seconds)
summary(billboard_2000$length)

(too_long_data <- 
   data.frame(Group     = c(rep("A", 3), rep("B", 3)),
              Statistic = rep(c("Mean", "Median", "SD"), 2),
              Value     = c(1.28, 1.0, 0.72, 2.81, 2, 1.33)))

(just_right_data <- too_long_data %>%
    pivot_wider(names_from = Statistic, values_from = Value))

billboard_2000 <- billboard_2000 %>%
    group_by(artist, track) %>%
    mutate(`Weeks at #1` = sum(rank == 1),
           `Peak Rank`   = ifelse(any(rank == 1), #<<
                                  "Hit #1",
                                  "Didn't #1")) %>%
    ungroup() #<<

library(ggplot2)
billboard_trajectories <- 
  ggplot(data = billboard_2000,
         aes(x = week, y = rank, group = track,
             color = `Peak Rank`)
         ) +
  geom_line(aes(size = `Peak Rank`), alpha = 0.4) +
    # rescale time: early weeks more important
  scale_x_log10(breaks = seq(0, 70, 10)) + 
  scale_y_reverse() + # want rank 1 on top, not bottom
  theme_classic() +
  xlab("Week") + ylab("Rank") +
  scale_color_manual(values = c("black", "red")) +
  scale_size_manual(values = c(0.25, 1)) +
  theme(legend.position = c(0.90, 0.25),
        legend.background = element_rect(fill="transparent"))

billboard_trajectories

billboard_2000 %>%
    select(artist, track, `Weeks at #1`) %>%
    distinct(artist, track, `Weeks at #1`) %>%
    arrange(desc(`Weeks at #1`)) %>%
    head(7)

billboard_2000 <- billboard_2000 %>%
    mutate(date = date.entered + (week - 1) * 7) #<<
billboard_2000 %>% arrange(artist, track, week) %>%
    select(artist, date.entered, week, date, rank) %>% head(4)

plot_by_day <- 
  ggplot(billboard_2000, aes(x = date, y = rank, group = track)) +
  geom_line(size = 0.25, alpha = 0.4) +
  # just show the month abbreviation label (%b)
  scale_x_date(date_breaks = "1 month", date_labels = "%b") +
  scale_y_reverse() + theme_bw() +
  # add lines for start and end of year:
  # input as dates, then make numeric for plotting
  geom_vline(xintercept = as.numeric(as.Date("2000-01-01", "%Y-%m-%d")),
             col = "red") +
  geom_vline(xintercept = as.numeric(as.Date("2000-12-31", "%Y-%m-%d")),
             col = "red") +
  xlab("Week") + ylab("Rank")

plot_by_day

library(nycflights13)

## data(flights)
## data(airlines)
## data(airports)
## # and so on...

flights %>% filter(dest == "SEA") %>% 
    select(carrier) %>%
    left_join(airlines, by = "carrier") %>%
    count(name) %>% #<<
    arrange(desc(n))

flights %>% filter(dest == "SEA") %>% select(tailnum) %>%
    left_join(planes %>% select(tailnum, manufacturer), #<<
              by = "tailnum") %>%
    count(manufacturer) %>% # Count observations by manufacturer
    arrange(desc(n)) # Arrange data descending by count

## flights %>%
##     select(origin, year, month, day, hour, dep_delay) %>%
##     inner_join(weather,
##            by = c("origin", "year", "month", "day", "hour")) %>%
##     select(dep_delay, wind_gust) %>%
##     # removing rows with missing values
##     filter(!is.na(dep_delay) & !is.na(wind_gust)) %>%
##     ggplot(aes(x = wind_gust, y = dep_delay)) +
##       geom_point() +
##       geom_smooth()

flights %>% select(origin, year, month, day, hour, dep_delay) %>%
    inner_join(weather, by = c("origin", "year", "month", "day", "hour")) %>%
    select(dep_delay, wind_gust) %>%
    # removing rows with missing values
    filter(!is.na(dep_delay) & !is.na(wind_gust)) %>%
    ggplot(aes(x = wind_gust, y = dep_delay)) +
      geom_point() + geom_smooth()
