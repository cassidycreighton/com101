library(palmerpenguins)
library(ggplot2)

# Make the following changes to this basic boxplot.
# 1) Change the grey background to white
# 2) Clean up the axis labels
# 3) Make the color vary by island
# 4) Choose a color palette that you enjoy!
okabe_ito <- c("#E69F00", "#56B4E9", "#009E73")
ggplot(penguins, aes(x = body_mass_g, y = island, color = island)) +
  geom_boxplot(fill = okabe_ito, color = "#000000") +
  theme_bw() +
  labs(x = "Body Mass (g)", y = "Island")



