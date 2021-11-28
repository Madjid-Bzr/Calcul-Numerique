//Exercice 06: Prise en main de Scilab

//Question 1

x=[10,15,61,02]
disp('Vecteur x :',x)

//Question 2
y=[12;16;03;18]
disp('Vecteur Y :',y)

//Question 3
z=x+y'
disp(" z = x+ y ", z)
s=x*y
disp("s = xy ",s)

//Question 4
disp("Size de x ",size(x))
disp("Size de y ",size(y))

//Question 5
disp("La norme de x ",norm(x,2))

//Question 6
A=[12,16,6;10,3,5;4,9,14;45,10,25]
disp("Matrice A ",A)

//Question 7
B=A'
disp("La transposé de A ",B)

// ----------------------------
clear A B x y z s;
//Question 8
A=[2,6,61;18,16,13;8,9,1]
disp("Matrice A carré ",A)
B=[10,22,34;8,7,15;14,7,11]
disp("Matrice B carré ",B)
//Question 9
Somme=A+B
Mul=A*B
Sub=A-B

disp("A+B",Somme)
disp("A*B",Mul)
disp("A-B",Sub)
//Question 10


disp("Conditionnement de A",cond(A))  




