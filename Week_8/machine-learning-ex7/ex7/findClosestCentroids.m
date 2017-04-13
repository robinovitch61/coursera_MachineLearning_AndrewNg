function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

for j = 1:K

	D(j,:) = diag((X - centroids(j,:))*(X - centroids(j,:))');

end

[~, id] = min(D);
idx = id';

% for i = 1:length(idx)
% 	example = X(i,:);
% 	warning('off', 'Octave:broadcast');
% 	centroid_example_vec = centroids - example;
% 	mags = sum(centroid_example_vec.^2, 2);
% 	closest_cluster_ind = find(mags == min(mags));
% 	idx(i) = closest_cluster_ind;
% end
% =============================================================

end

