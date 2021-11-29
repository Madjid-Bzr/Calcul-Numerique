// Exercice 8: Produit Matrice-Matrice

//Question 1:
function [C] = matmat3b(A,B)
    C = zeros(size(A,'r'),size(B,'c'));
    for i=1:1:size(A,'r')
        for j=1:1:size(B,'c')
            for k=1:1:size(A,'c')
                C(i,j) = A(i,k)*B(k,j) + C(i,j);
            end
        end
    end
endfunction


function [C] = matmat2b(A,B)
    C = zeros(size(A,'r'),size(B,'c'));
    for i=1:size(A,'r')
        for j=1:size(B,'c')
            C(i,j) = A(i,[1:size(A,'c')])*B([1:size(B,'r')],j) + C(i,j);
        end
    end
endfunction


function [C] = matmat1b(A,B)
    C = zeros(size(A,'r'),size(B,'c'));
    for i=1:size(A,'r')
        C(i,[1:size(B,'c')]) = A(i,[1:size(A,'c')])*B + C(i,[1:size(B,'c')]);
    end
endfunction

// Question 3:
tic();
[C]=matmat3b(A,B)
mprintf('\nTime with matmat3b: %f\n',toc());

tic();
[D]=matmat2b(A,B)
mprintf('\nTime with matmat2b: %f\n',toc());

tic();
[V]=matmat1b(A,B)
mprintf('\nTime with matmat1b: %f\n',toc());


