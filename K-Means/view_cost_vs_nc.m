function view_cost_vs_nc(file_points)
  
   points = dlmread(file_points, ' ', 5, 0);
   cost = [];
   
    
    for NC = 1:10
    centroids = clustering_pc(points, NC);
    cost(NC) = compute_cost_pc(points, centroids);
   end 
   plot(cost);
  
end

