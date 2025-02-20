library(marinecs100b)
library(ggplot2)
install.packages("remotes")
remotes::install_github("MarineCS-100B/marinecs100b")
# Distributions of continuous variables -----------------------------------
woa_sal
# P1 What type of visualization is appropriate for a single continuous variable?
#histogram
# P2 What type of visualization is appropriate for a continuous variable across
# categorical variables?
#box plot
# P3 Use ggplot to visualize the distribution of sea surface salinity. Save your
# figure as “comm101p3.png”.
ggplot(woa_sal, aes(salinity)) +
  geom_histogram() +
  theme_bw() +
  labs( x = "Salinity", y = "Counts")
ggsave("comm101p3.png")

# P4 Use ggplot to visualize the distribution of sea surface salinity by ocean
# basin. Save your figure as “comm101p4.png”.
okabe_ito <- c("#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7", "#000000")
ggplot(woa_sal, aes(salinity, ocean)) +
  geom_boxplot(fill = okabe_ito[1: 4], color = "#000000") +
  theme_bw()
ggsave("comm101p4.png")
# P5 Interpret your figures from P3 and P4. What patterns do you notice?
#On average, mediterranean has the highest salinity
#Indian Ocean has extreme upper outliers, Mediterranean and Atlantic have extreme low outliers
# P6 Critique your figures from P3 and P4. What changes would highlight the
# patterns you interpreted in P5? You don’t need to write code for these
# changes, just describe them verbally.
#I would edit the histogram so it showed which ocean the values are from through color

# Relationships between continuous variables ------------------------------

# P7 Visualize the relationship between salinity and latitude by ocean basin.
ggplot(woa_sal, aes(x = latitude, y = salinity, color = ocean)) +
  geom_point()+
  scale_fill_manual(values = okabe_ito)


# P8 Edit your figure from P7 to improve its interpretability in at least one of
# the following categories: visually differentiating the oceans, appropriateness
# of the labels, or use of negative space. Save this figure as “comm101p8.png”.
ggplot(woa_sal, aes(x = latitude, y = salinity, color = ocean)) +
  geom_point()+
  scale_fill_manual(values = okabe_ito)+
  theme_bw() +
  labs(x = "Latitude (°)",  y= "Salinity (psu)", color = "Ocean Basin")
ggsave("comm101p8.png")
