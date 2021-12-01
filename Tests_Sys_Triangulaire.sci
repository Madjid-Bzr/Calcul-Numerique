//
format("e", 16);
 
 
clear A U L xex x n;
U_err_av = zeros(10);
U_err_ar = zeros(10);

L_err_av = zeros(10);
L_err_ar = zeros(10);


// xdata
xdata = [10:10:100];

for n = xdata

    i = n / 10;
	
	// Initialisation
	A = rand(n, n);
	U = triu(A);
	L = tril(A);
	xex = rand(n, 1);
	
	b = U * xex;
	// U
	x = usolve(U, b);
	
	// error
	U_err_av(i) = norm(xex - x) / norm(xex);
	U_err_ar(i) = norm(b - U * x) / norm(b);

    // L
    b = L * xex;
	x = lsolve(L, b);
	
	// error
	L_err_av(i) = norm(xex - x) / norm(xex);
	L_err_ar(i) = norm(b - L * x) / norm(b);

end

xtitle("Resultat erreur avant", "tailles matrices", "erreur avant");
plot(xdata, [log(U_err_av) log(L_err_av)]);
legend(["Supérieure" "Inférieur"], 2);
xs2png(0, "img/err_av.png");
clf();

xtitle("Resultat erreur arrière", "tailles matrices", "erreur arrière");
plot(xdata, [log(U_err_av) log(L_err_ar)]);
legend(["Supérieure" "Inférieur"], 2);
xs2png(0, "img/err_ar.png");
clf();

