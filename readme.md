## Algoritmul K-Means


### Task 1


Citesc datele de intrare din fisierele date (file_params, file_points),	folosind comanda 'load' pentru numarul de centroizi si comanda 'dlmread(filename,delimiter,R1,C1)' pentru puncte, deoarece fisierul contine comentarii care nu trebuie incluse in citire. In cazul meu, delimitatorul setat este ' ', randul este 5 (randul la care unde se sfarsesc comentariile), iar coloana de unde incepe textul este 0.


### Task 2

Setez numarul maxim de iteratii la 10.
Initializez centroizii random.
Caut cei mai apropiati centriozi.

Pentru fiecare iteratie (1 : 10), pentru fiecare punct, calculez folosind distanta euclidiana, grupul cel mai apropiat centroid,  dupa care actualizez pozitiile centroizilor, calculand centrele de masa pentru fiecare punct din fiecare grup.


### Task 3

Asociez fiecare punct cu centroidul corespunzator, aleg culorile prin care vreau sa reprezint fiecare grup si folosesc functia 'scatter3' pentru a reprezenta 3D rezultatul.


### Task 4

Pentru fiecare linie, calculez distanta si actualizez distanta minima, insumand distantele la final pentru a afla suma tuturor clusterelor.

### Task 5

Citesc punctele din fisierul 'file_points'.
Initializez 'cost' ca vector.
Pentru numarul de centroizi variind de la 1 la 10, calculez centroizii aplenad functia 'clustering_pc' si costul apeland 'compute_cost_pc'.

Trasez graficul folosind functia 'plot'.
