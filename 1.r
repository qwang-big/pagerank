# Form the A matrix. Then, introduce decay and form the B matrix
# Transition matrix A
A <- matrix(c(0, 1/2, 1/2, 0, 0, 0,
             1/6, 1/6, 1/6, 1/6, 1/6, 1/6,
             1/3, 1/3, 0, 0, 1/3, 0,
             0, 0, 0, 0, 1/2, 1/2,
             0, 0, 0, 1/2, 0, 1/2,
             0, 0, 0, 1, 0, 0), nrow=6)

# Take Decay d = 0.85

d <- 0.85

B <- 0.85*A + (0.15/6)
# Start with a uniform rank vector r and perform power iterations on B till convergence.That is, compute the solution r = Bn × r. Attempt this for a sufficiently large n so that r actually converges.
r <- matrix(c(1/6,1/6,1/6,1/6,1/6,1/6),nrow=6)

# perform power iterations on B
iterations <- function(M, r, n) {
  Bn = diag(nrow(M)) 
  # Caculate B n times
  for (i in 1:n)
  {
    Bn = Bn %*% M
  }
  return (Bn %*% r)
}

# Different values of n, to see convergence
eig_vec1<-iterations(B, r, 30) #Converges
#iterations(B, r, 40)
eig_vec1
