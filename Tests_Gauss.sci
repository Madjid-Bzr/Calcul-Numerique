s = 100;
rand("seed");
xdata = [10:10:100];

for n = xdata
    
    i = n/10;

        U=rand(n,n);//Ici on génère une matrice carée avec des nombre aléatoires
        
                    
        b=rand(n,1);//Vecteur solution
        
        
        xex=rand(n,1);//Vecteur solution
        
        b =  U*xex;//Creation du second membre
        
        //xl = lsolve(U,b)
        x = gausskij3b(U,b);
        
        //Calcul de l'erreur en avant
        avant(i) = norm(x-xex)/norm(xex);
        
        //Calcul de l'erreur arrière
        arrière(i) = norm(b-U*x)/norm(b);

        
end

    xtitle("Erreur avant arrière de la methode de Gauss"); 
    plot2d(xdata,[log(avant) log(arrière)],[3 5 2],leg="Erreur avant de gauss @ Erreur arrière de Gauss ");
    xlabel("Taille matrice (n)");
    ylabel("Valeurs erreurs");
    
    xs2png(0, "img/gauss.png");
    clf();
