X_norm = load("ex1data2.txt")
mu = mean(X_norm, 1);
sigma = std(X_norm, 1);

for j = 1 : length(X_norm)
    X_norm(j, :) = (X_norm(j, :) - mu) ./ sigma;
end

X_norm