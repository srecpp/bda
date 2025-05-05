install.packages("factoextra")
install.packages("magrittr")
install.packages("cluster")

# Load libraries
library(factoextra)
library(magrittr)
library(cluster)

# Standardize the data
df <- scale(USArrests)

# Compute fuzzy clustering with k = 2 clusters
res.fanny <- fanny(df, k = 2)

# Inspect clustering results
head(res.fanny$membership, 3)   # Membership coefficients (fuzzy probabilities)
res.fanny$coeff                 # Dunn's partition coefficient
head(res.fanny$clustering)      # Hard cluster assignment (for visualization)

# Visualize fuzzy clustering
plot_fanny <- fviz_cluster(res.fanny,
                           ellipse.type = "norm",
                           repel = TRUE,
                           palette = "jco",
                           ggtheme = theme_minimal(),
                           legend = "right")

# Ensure the plot displays
print(plot_fanny)
