data {
  int N;
  real carat[N];
}

generated quantities {
    real alpha = normal_rng(193, 5); 
    real beta = normal_rng(5625, 5);
    real sigma = exponential_rng(5);
    real price [N];
    for (i in 1:N) {
        price[i] = normal_rng(alpha + beta * carat[i], sigma);
    }
}