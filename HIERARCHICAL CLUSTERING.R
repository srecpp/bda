# Install necessary packages (only needed once)
install.packages("factoextra")
install.packages("cluster")
install.packages("magrittr")

# Load libraries
library(factoextra)
library(cluster)
library(magrittr)

# Perform hierarchical clustering on scaled USArrests data
res.hc <- USArrests %>%
  scale() %>%                                # Standardize the data
  dist(method = "euclidean") %>%             # Compute distance matrix
  hclust(method = "ward.D2")                 # Apply hierarchical clustering


# Visualize the dendrogram
print(fviz_dend(res.hc,
      k = 4,# Cut tree into 4 clusters
	cex = 0.5,
      k_colors = c("#2E9FDF", "#00AFBB", "#E7B800", "#FC4E07"),          
	color_labels_by_k = TRUE,
	rect = TRUE))