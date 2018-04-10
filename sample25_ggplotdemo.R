library(ggplot2)
theme_set(theme_minimal())
# Demo dataset
head(economics)


# # Basic line plot
ggplot(data = economics, aes(x = date, y = pop))+
  geom_line(color = "#00AFBB", size = 2)
# # Plot a subset of the data
ss <- subset(economics, date > as.Date("2006-1-1"))
ggplot(data = ss, aes(x = date, y = pop)) +
  geom_line(color = "#FC4E07", size = 2)
library(tidyr)
library(dplyr)
df <- economics %>%
  select(date, psavert, uempmed) %>%
  gather(key = "variable", value = "value", -date)
head(df, 3)
# # Multiple line plot
ggplot(df, aes(x = date, y = value)) +
  geom_line(aes(color = variable), size = 1) +
  scale_color_manual(values = c("#00AFBB", "#E7B800")) +
  theme_minimal()
# # Area plot
ggplot(df, aes(x = date, y = value)) +
  geom_area(aes(color = variable, fill = variable),
            alpha = 0.5, position = position_dodge(0.8)) +
  scale_color_manual(values = c("#00AFBB", "#E7B800")) +
  scale_fill_manual(values = c("#00AFBB", "#E7B800"))