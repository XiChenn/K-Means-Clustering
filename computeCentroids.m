function centroids = computeCentroids(X, idx, K)

[m n] = size(X);
centroids = zeros(K, n);

temp = [idx, X];	%temp: m * 3
for i = 1:K
	A = [];	
	L = temp == i;		
	A = temp(L(:, 1), 2:end);
	centroids(i, :) = mean(A);
end

% for i = 1:K
%     indices = find(idx == i);
%     total = zeros(1, 2);
%     for j = 1:length(indices)
%         total = total + X(indices(j), :);
%     end
%     centroids(i, :) = (total ./ length(indices));   
% end

end

