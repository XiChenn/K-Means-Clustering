function idx = findClosestCentroids(X, initial_centroids)

m   = length(X);
idx = zeros(m, 1);
K   = length(initial_centroids);

for i = 1:m
	A = [];
	for j = 1:K
		temp = X(i, :) - initial_centroids(j, :);	%temp: 1*2
		A = [A; temp];	%construct a matrix A(3*2) to store all the result from temp.
	end
		[minval, idx(i)] = min(sum(A.^2, 2));	%A: 3*2;	sum(A.^2, 2): 3*1
		%[minval, idx(i)] = min(sum((X(i, :) - centroids).^2, 2)); %it's working in Octave, but not in Matlab
end

% for i = 1:m
%     closest = Inf;
%     for j = 1:K
%         distance = (X(i, 1) - initial_centroids(j, 1))^2 + (X(i, 2) - initial_centroids(j, 2))^2;
%         if (distance < closest)
%             closest = distance;
%             idx(i) = j;
%         end
%     end
% end

end

