% computes the NC centroids corresponding to the given points using K-Means
function centroids = clustering_pc(points, NC)
	centroids = [];
  
   max_interations = 10;
  
  centroids = zeros(NC,size(points, 2));
  randidx = randperm(size(points,1));
  centroids = points(randidx(1:NC), :);
  
  aux = zeros(size(points, 1));
  m = size(points, 1);
  
  %pentru fiecare interatie, atribui fiecarui punct, cu ajutorul distantei
  %euclidiene, grupul reprezentat de cel mai apropiat centroid  
  for i = 1:max_interations
    
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
    
  %recalculez pozitiile centroizilor
  
      for i=1:NC
        centroids(i, :)=mean(points(find(aux==i), :), 1);
      end
         
  end

end
