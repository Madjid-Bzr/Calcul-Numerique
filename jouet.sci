// Exercice 7: Matrice random et problème "jouet"

//Question 1 à 5:
clear A b xex x n;

//n=3
n=3

err_avant=0
err_arrière=0

for i=1:10
    
    A = rand(n,n)
    xex = rand(n,1)
    b = A*xex
    x = A\b    
    err_avant =norm(xex-x)/norm(xex)+err_avant
    err_arrière=norm(b-A*x)/(norm(b))+err_arrière

end
err_avant = err_avant/10;
err_arrière = err_arrière/10;

disp("Erreur avant n=3 : ", err_avant)
disp("Erreur arrière n=3 : ", err_arrière)



//Question 6 :

//n=100:
n = 100;

err_avant=0
err_arrière=0

for i=1:10
    
    A = rand(n,n);
    xex = rand(n,1);
    b = A*xex;
    x = A\b;
    
    err_avant =norm(xex-x)/norm(xex)+err_avant
    err_arrière=norm(b-A*x)/(norm(b))+err_arrière

end
err_avant = err_avant/10;
err_arrière = err_arrière/10;

disp("Erreur avant n=100 : ", err_avant)
disp("Erreur arrière n=100 : ", err_arrière)


//n=1000:
n = 1000;

err_avant=0
err_arrière=0

for i=1:10
    
    A = rand(n,n);
    xex = rand(n,1);
    b = A*xex;
    x = A\b;
    
    err_avant =norm(xex-x)/norm(xex)+err_avant
    err_arrière=norm(b-A*x)/(norm(b))+err_arrière

end
err_avant = err_avant/10;
err_arrière = err_arrière/10;

disp("Erreur avant n=1000 : ", err_avant)
disp("Erreur arrière n=1000 : ", err_arrière)


