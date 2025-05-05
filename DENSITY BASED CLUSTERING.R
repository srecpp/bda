install.packages("factoextra")
install.packages("magrittr")
install.packages("cluster")
install.packages("fpc")

# Load libraries
library(factoextra)
library(magrittr)
library(cluster)
library(fpc)

# Load example data
data("multishapes", package = "factoextra")
df <- multishapes[, 1:2]  # Select the first two columns

# Perform DBSCAN clustering
set.seed(123)
db <- fpc::dbscan(df, eps = 0.15, MinPts = 5)

# Visualize DBSCAN clustering result
plot_dbscan <- fviz_cluster(db,
                            data = df,
                            stand = FALSE,
                            ellipse = FALSE,
                            show.clust.cent = FALSE,
                            geom = "point",
                            palette = "jco",
                            ggtheme = theme_classic())

# Display the plot
print(plot_dbscan)
