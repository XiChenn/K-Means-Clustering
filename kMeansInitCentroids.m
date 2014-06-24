function centroids = kMeansInitCentroids(X, K)
%KMEANSINITCENTROIDS This function initializes K centroids that are to be 
%used in K-Means on the dataset X
%   centroids = KMEANSINITCENTROIDS(X, K) returns K initial centroids to be
%   used with the K-Means on the dataset X
%

% You should compute new values for the centroids
centroids = zeros(K, size(X, 2));

% Set the centroids to randomly chosen values from dataset X. 
% 1) randomly re-order the indices of examples
% 2) take the first K examples as centroids


randIdx = randperm(size(X, 1));
centroids = X(randIdx(1:K), :);






end

