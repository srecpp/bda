install.packages("factoextra")
install.packages("magrittr")
install.packages("cluster")

# Load required libraries
library(factoextra)
library(magrittr)
library(cluster)

# Use USArrests dataset for demonstration 
my_data <- scale(USArrests)  # Standardize the data

# Set seed for reproducibility
set.seed(123)

# Perform K-means clustering with 3 clusters
km.res <- kmeans(my_data, centers = 3, nstart = 25)

# Visualize the clusters
plot_kmeans <- fviz_cluster(km.res,
                            data = my_data,
                            ellipse.type = "convex",
                            palette = "jco",
                            ggtheme = theme_minimal())

# Ensure the plot is displayed (important in script or console)
print(plot_kmeans)
