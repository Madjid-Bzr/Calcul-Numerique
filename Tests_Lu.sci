format("e", 16);
//
s = 10
rand("seed", s);
times = zeros(10);
x = zeros(10);
err_av = zeros(10);
condA = zeros(10);


xdata = [10:10:100];
for n = xdata
    
    i = n / 10;
	A = rand(n, n);

	tic();
	LU = mylu3b(A);
	temps(i) = toc();
	// error
	err_av(i) = norm(A - LU) / norm(A);
	condA(i) = cond(A);

end

xtitle("Temps par taille", "taille matrice", "temps");
plot(xdata, temps);
legend(["mylu3b" "mylu1b"], 2);
xs2png(0, "img/mylu_temps.png");
clf();

xtitle("Resultat erreur relative", "Taille matrice", "erreur relative");
plot(xdata, log(err_av));
xs2png(0, "img/mylu_erreur.png");
clf();

xtitle("Conditionement", "Taille matrice", "cond");
plot(xdata, log(condA));
xs2png(0, "img/mylu_cond.png");
clf();
