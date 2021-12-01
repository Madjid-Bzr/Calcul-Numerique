// ------------ Exercice 3 -------------------------------

// ------------ Etude du temps d'exécution ----------------

clear tailles temps3b temps2b temps1b ;
c = 0;

for n=10:10:100
    
    c = c +1;
    tailles(c) = n;
    A=rand(n,n);
    B=rand(n,n);
    
    //matmat3b:
    temps = 0;
    for i=1:10
        tic();
        matmat3b(A,B);
        temps = toc() + temps;
    end
    temps3b(c) = temps/10;
    
    //matmat2b:
    temps = 0;
    for i=1:10
        tic();
        matmat2b(A,B);
        temps = toc() + temps;
    end
    temps2b(c) = temps/10;
    
    //matmat1b :
    temps = 0;
    for i=1:10
        tic();
        matmat1b(A,B);
        temps = toc() + temps;
    end
    temps1b(c) = temps/10;
    
end

subplot(1,3,1)
plot(tailles, temps3b,"r")
legend(["matmat3b"], 2);

subplot(1,3,2)
plot(tailles, temps2b,"b")
legend(["matmat2b"], 2);

subplot(1,3,3)
plot(tailles, temps1b,"g")
legend(["matmat1b"], 2);

xs2png(0, "img/mat.png");
clf();




