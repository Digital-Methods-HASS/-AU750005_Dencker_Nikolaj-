dir.create("data")

library(tidyverse)
library(here)
Kings <- read_csv2("data/Assignment_W10_spreadsheet.csv")
names(Kings)
Kings %>%
  mutate(duration = Reign_To - Reign_From) %>%
  mutate(midyear = Reign_To - duration/2) %>%
  ggplot(aes(x = midyear, y = duration)) +
  geom_point() + 
  geom_smooth()



  