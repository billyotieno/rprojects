#This line of code installs the pacman page if you do not have it installed - if you do, it simply loads the package
if(!require(pacman))install.packages("pacman")

pacman::p_load('dplyr', 'tidyr', 'gapminder',
               'ggplot2',  'ggalt',
               'forcats', 'R.utils', 'png', 
               'grid', 'ggpubr', 'scales',
               'bbplot')

# install the devtools package
install.packages('devtools')


#download and install the bbc package
devtools::install_github('bbc/bbplot')


# data for chart from gapminder package
line_df <- gapminder %>% 
  filter(country =="Malawi")

# make a plot
line <- ggplot(line_df, aes(x=year, y=lifeExp))+
        geom_line(color = "#1380A1", size = 1)+
        geom_hline(yintercept = 0, size = 1, color="#333333")+
        labs(title="Living longer", subtitle = "Life expectancy in Malawi 1952-2007")
