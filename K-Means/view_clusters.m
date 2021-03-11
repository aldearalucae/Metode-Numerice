% outputs a graphical representation of the clustering solution
function view_clusters(points, centroids)
 
  NC = size(centroids, 1);
  m = size(points, 1);

    for i = 1:m
      k = 1;
      distance_min = sum((points(i, :) - centroids(1, :)) .^2);
      for j = 2: NC
        distance = sum((points(i, :) - centroids(j, :)) .^2);
        if(distance < distance_min)
        distance_min = distance;
        k = j;
        end
      end
      aux(i) = k;
    end

  colors= [1 1 0; 0 0.6 1; 1 0 0];

  scatter3(points(:,1), points(:,2), points(:,3), [], colors(aux(:),:), 'filled')

end