# Compute the eigen-decomposition of B and verify that you indeed get an eigenvalueof 1 as the largest eigenvalue and that its corresponding eigenvector is the same vector that you obtained in the previous power iteration method. Further, this eigenvector has all positive entries and it sums to 1.
# Decomposing B
eigen_decomp <- eigen(B)

# Maximum eigen value we get is indeed 1
max_value<-which.max(eigen_decomp$values)
## Warning in which.max(eigen_decomp$values): imaginary parts discarded in
## coercion
# check this eigenvector has all positive entries and it sums to 1
eig_vec2 <- as.numeric((1/sum(eigen_decomp$vectors[,1]))*eigen_decomp$vectors[,1])
sum(eig_vec2)
