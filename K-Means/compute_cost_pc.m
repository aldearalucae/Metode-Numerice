% computes a clustering solution total cost
function cost = compute_cost_pc(points, centroids)
  
  NC = size(centroids);
  m = size(points);
    cost = 0;
    
    for i = 1:m
      distance_min = 10000;
      for j = 1: NC
        distance = norm(centroids(j, :) - points(i, :));
        if(distance < distance_min)
        distance_min = distance;  
        end
      end
     cost = cost + distance_min;
    end 
 
end

