install.packages("factoextra")
install.packages("cluster")
install.packages("magrittr")
install.packages("mclust")
install.packages("patchwork")

# Load libraries
library(cluster)
library(factoextra)
library(magrittr)
library(mclust)
library(patchwork)

# Load and preview the dataset
data("diabetes", package = "mclust")
head(diabetes, 3)

# Fit Gaussian Mixture Model
mc <- Mclust(diabetes)

# Generate plots
plot_bic <- fviz_mclust(mc, "BIC", palette = "jco")
plot_classification <- fviz_mclust(mc, "classification", geom = "point", pointsize = 1.5, palette = "jco")
plot_uncertainty <- fviz_mclust(mc, "uncertainty", palette = "jco")

combined_plot <- plot_bic + plot_classification + plot_uncertainty
print(combined_plot)
